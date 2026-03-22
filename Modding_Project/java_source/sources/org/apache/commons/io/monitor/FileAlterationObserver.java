package org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.comparator.NameFileComparator;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileAlterationObserver implements Serializable {
    private static final long serialVersionUID = 1185122225658782848L;
    private final Comparator<File> comparator;
    private final FileFilter fileFilter;
    private final List<FileAlterationListener> listeners;
    private final FileEntry rootEntry;

    public FileAlterationObserver(String str) {
        this(new File(str));
    }

    public final File[] Wwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        File[] fileArr;
        if (file.isDirectory()) {
            FileFilter fileFilter = this.fileFilter;
            if (fileFilter == null) {
                fileArr = file.listFiles();
            } else {
                fileArr = file.listFiles(fileFilter);
            }
        } else {
            fileArr = null;
        }
        if (fileArr == null) {
            fileArr = FileUtils.f13308Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        Comparator<File> comparator = this.comparator;
        if (comparator != null && fileArr.length > 1) {
            Arrays.sort(fileArr, comparator);
        }
        return fileArr;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileEntry fileEntry, File file) {
        if (fileEntry.refresh(file)) {
            for (FileAlterationListener fileAlterationListener : this.listeners) {
                if (fileEntry.isDirectory()) {
                    fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                } else {
                    fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                }
            }
        }
    }

    public final FileEntry[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, FileEntry fileEntry) {
        FileEntry[] fileEntryArr;
        File[] Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.length > 0) {
            fileEntryArr = new FileEntry[Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.length];
        } else {
            fileEntryArr = FileEntry.EMPTY_ENTRIES;
        }
        for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.length; i++) {
            fileEntryArr[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2[i]);
        }
        return fileEntryArr;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileEntry fileEntry) {
        for (FileAlterationListener fileAlterationListener : this.listeners) {
            if (fileEntry.isDirectory()) {
                fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry.getFile());
            } else {
                fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry.getFile());
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileEntry fileEntry) {
        for (FileAlterationListener fileAlterationListener : this.listeners) {
            if (fileEntry.isDirectory()) {
                fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry.getFile());
            } else {
                fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry.getFile());
            }
        }
        for (FileEntry fileEntry2 : fileEntry.getChildren()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2);
        }
    }

    public final FileEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileEntry fileEntry, File file) {
        FileEntry newChildInstance = fileEntry.newChildInstance(file);
        newChildInstance.refresh(file);
        newChildInstance.setChildren(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, newChildInstance));
        return newChildInstance;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileEntry fileEntry, FileEntry[] fileEntryArr, File[] fileArr) {
        FileEntry[] fileEntryArr2;
        if (fileArr.length > 0) {
            fileEntryArr2 = new FileEntry[fileArr.length];
        } else {
            fileEntryArr2 = FileEntry.EMPTY_ENTRIES;
        }
        int i = 0;
        for (FileEntry fileEntry2 : fileEntryArr) {
            while (i < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i]) > 0) {
                FileEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry, fileArr[i]);
                fileEntryArr2[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                i++;
            }
            if (i < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i]) == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2, fileArr[i]);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2, fileEntry2.getChildren(), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(fileArr[i]));
                fileEntryArr2[i] = fileEntry2;
                i++;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2, fileEntry2.getChildren(), FileUtils.f13308Wwwwwwwwwwwwwwwwwwwwwwwwww);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2);
            }
        }
        while (i < fileArr.length) {
            FileEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry, fileArr[i]);
            fileEntryArr2[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            i++;
        }
        fileEntry.setChildren(fileEntryArr2);
    }

    public void addListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.add(fileAlterationListener);
        }
    }

    public void checkAndNotify() {
        for (FileAlterationListener fileAlterationListener : this.listeners) {
            fileAlterationListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
        File file = this.rootEntry.getFile();
        if (file.exists()) {
            FileEntry fileEntry = this.rootEntry;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry, fileEntry.getChildren(), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file));
        } else if (this.rootEntry.isExists()) {
            FileEntry fileEntry2 = this.rootEntry;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileEntry2, fileEntry2.getChildren(), FileUtils.f13308Wwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        for (FileAlterationListener fileAlterationListener2 : this.listeners) {
            fileAlterationListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public Iterable<FileAlterationListener> getListeners() {
        return this.listeners;
    }

    public void initialize() throws Exception {
        FileEntry fileEntry = this.rootEntry;
        fileEntry.refresh(fileEntry.getFile());
        this.rootEntry.setChildren(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.rootEntry.getFile(), this.rootEntry));
    }

    public void removeListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            do {
            } while (this.listeners.remove(fileAlterationListener));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[file='");
        sb.append(getDirectory().getPath());
        sb.append('\'');
        if (this.fileFilter != null) {
            sb.append(", ");
            sb.append(this.fileFilter.toString());
        }
        sb.append(", listeners=");
        sb.append(this.listeners.size());
        sb.append("]");
        return sb.toString();
    }

    public FileAlterationObserver(String str, FileFilter fileFilter) {
        this(new File(str), fileFilter);
    }

    public FileAlterationObserver(String str, FileFilter fileFilter, IOCase iOCase) {
        this(new File(str), fileFilter, iOCase);
    }

    public FileAlterationObserver(File file) {
        this(file, (FileFilter) null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter) {
        this(file, fileFilter, (IOCase) null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter, IOCase iOCase) {
        this(new FileEntry(file), fileFilter, iOCase);
    }

    public FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, IOCase iOCase) {
        this.listeners = new CopyOnWriteArrayList();
        if (fileEntry != null) {
            if (fileEntry.getFile() != null) {
                this.rootEntry = fileEntry;
                this.fileFilter = fileFilter;
                if (iOCase != null && !iOCase.equals(IOCase.SYSTEM)) {
                    if (iOCase.equals(IOCase.INSENSITIVE)) {
                        this.comparator = NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
                        return;
                    } else {
                        this.comparator = NameFileComparator.NAME_COMPARATOR;
                        return;
                    }
                }
                this.comparator = NameFileComparator.NAME_SYSTEM_COMPARATOR;
                return;
            }
            throw new IllegalArgumentException("Root directory is missing");
        }
        throw new IllegalArgumentException("Root entry is missing");
    }

    public void destroy() throws Exception {
    }
}
