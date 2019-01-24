import sys
import time
import subprocess

from pathlib import Path
from watchdog.observers import Observer
from watchdog.events import LoggingEventHandler
from watchdog.utils.dirsnapshot import DirectorySnapshot
from watchdog.utils.dirsnapshot import DirectorySnapshotDiff

if __name__ == "__main__":
    path = sys.argv[1] if len(sys.argv) > 1 else str(Path.home()) + "\\Code"
    event_handler = LoggingEventHandler()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=True)
    observer.start()

    dir_snapshot_now = None
    dir_snapshot_initial = DirectorySnapshot(path)

    try:
        while True:
            time.sleep(5)

            dir_snapshot_now = DirectorySnapshot(path)

            if str(dir_snapshot_now) == str(dir_snapshot_initial):
                continue
                
            dirs_diff = DirectorySnapshotDiff(dir_snapshot_initial, dir_snapshot_now)

            created_files = dirs_diff.files_created
            created_dirs  = dirs_diff.dirs_created
            created_data  = created_dirs + created_files

            for entity_raw in created_data:
                entity = entity_raw.replace('.\\', '')
                enbase = entity.split('\\')[-1]
                is_dot = enbase.startswith('.')
                
                if is_dot:
                    subprocess.check_call(['attrib', '+H', entity])

            dir_snapshot_initial = dir_snapshot_now

    except KeyboardInterrupt:
        observer.stop()
    observer.join()