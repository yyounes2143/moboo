package com.tencent.rtmp.downloader;

import com.tencent.liteav.txcvodplayer.b.d;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.downloader.a.a;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXVodDownloadMediaInfo {
    public static final int STATE_ERROR = 3;
    public static final int STATE_FINISH = 4;
    public static final int STATE_INIT = 0;
    public static final int STATE_START = 1;
    public static final int STATE_STOP = 2;
    protected a dataSource;
    protected int downloadSegments;
    @Deprecated
    protected int downloadSize;
    protected TXPlayerDrmBuilder drmBuilder;
    protected int duration;
    @Deprecated
    protected d netApi;
    protected String playPath;
    protected int playableDuration;
    protected long playableSize;
    protected float progress;
    protected int segments;
    @Deprecated
    protected int size;
    protected int speed;
    protected long totalSize;
    protected String url;
    protected String userName = "default";
    protected int tid = -1;
    protected int downloadState = 0;
    protected long preferredResolution = 921600;
    protected boolean isResourceBroken = false;
    protected int mEncryptedLevel = 0;

    public TXVodDownloadDataSource getDataSource() {
        return this.dataSource;
    }

    public long getDownloadSize() {
        if (this.playableSize == 0 && this.totalSize > 0 && getProgress() > 0.0f) {
            return Math.min(((float) this.totalSize) * getProgress(), this.totalSize);
        }
        return Math.min(this.playableSize, this.totalSize);
    }

    public int getDownloadState() {
        return this.downloadState;
    }

    public TXPlayerDrmBuilder getDrmBuilder() {
        return this.drmBuilder;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getEncryptedLevel() {
        return this.mEncryptedLevel;
    }

    public String getPlayPath() {
        return this.playPath;
    }

    public int getPlayableDuration() {
        if (this.playableDuration == 0 && this.duration > 0 && getProgress() > 0.0f) {
            return Math.min((int) (this.duration * getProgress()), this.duration);
        }
        return this.playableDuration;
    }

    public long getPreferredResolution() {
        return this.preferredResolution;
    }

    public float getProgress() {
        float f;
        int i;
        int i2;
        int i3 = this.playableDuration;
        if (i3 > 0 && (i2 = this.duration) > 0) {
            f = Math.min(i3 / i2, 1.0f);
        } else {
            long j = this.playableSize;
            if (j > 0) {
                long j2 = this.totalSize;
                if (j2 > 0) {
                    f = Math.min(((float) j) / ((float) j2), 1.0f);
                }
            }
            f = 0.0f;
        }
        int i4 = this.downloadSegments;
        if (i4 > 0 && (i = this.segments) > 0) {
            f = Math.min(i4 / i, 1.0f);
        }
        float f2 = this.progress;
        if (f2 > 0.0f) {
            return Math.max(f, f2);
        }
        return f;
    }

    public long getSize() {
        return this.totalSize;
    }

    public int getSpeed() {
        return this.speed;
    }

    public int getTaskId() {
        return this.tid;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserName() {
        a aVar = this.dataSource;
        if (aVar != null) {
            return aVar.getUserName();
        }
        return this.userName;
    }

    public boolean isDownloadFinished() {
        if (this.downloadState == 4) {
            return true;
        }
        return false;
    }

    public boolean isResourceBroken() {
        return this.isResourceBroken;
    }
}
