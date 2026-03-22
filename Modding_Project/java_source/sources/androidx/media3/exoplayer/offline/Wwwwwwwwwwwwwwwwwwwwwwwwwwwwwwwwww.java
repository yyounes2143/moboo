package androidx.media3.exoplayer.offline;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        return downloadCursor.moveToPosition(downloadCursor.getPosition() - 1);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        return downloadCursor.moveToPosition(downloadCursor.getPosition() + 1);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        return downloadCursor.moveToPosition(downloadCursor.getCount() - 1);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        return downloadCursor.moveToPosition(0);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        int count = downloadCursor.getCount();
        if (downloadCursor.getPosition() == count - 1 && count != 0) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        if (downloadCursor.getPosition() == 0 && downloadCursor.getCount() != 0) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        if (downloadCursor.getCount() == 0 || downloadCursor.getPosition() == -1) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownloadCursor downloadCursor) {
        if (downloadCursor.getCount() == 0 || downloadCursor.getPosition() == downloadCursor.getCount()) {
            return true;
        }
        return false;
    }
}
