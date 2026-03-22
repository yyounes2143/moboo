package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import j$.util.Objects;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public final class PlayerId {
    public static final PlayerId UNSET;
    @Nullable
    private final Object equalityToken;
    @Nullable
    private final LogSessionIdApi31 logSessionIdApi31;
    public final String name;

    /* compiled from: Proguard */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class LogSessionIdApi31 {
        public static final LogSessionIdApi31 UNSET;
        public final LogSessionId logSessionId;

        static {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            UNSET = new LogSessionIdApi31(logSessionId);
        }

        public LogSessionIdApi31(LogSessionId logSessionId) {
            this.logSessionId = logSessionId;
        }
    }

    static {
        PlayerId playerId;
        if (Util.SDK_INT < 31) {
            playerId = new PlayerId("");
        } else {
            playerId = new PlayerId(LogSessionIdApi31.UNSET, "");
        }
        UNSET = playerId;
    }

    public PlayerId(String str) {
        Assertions.checkState(Util.SDK_INT < 31);
        this.name = str;
        this.logSessionIdApi31 = null;
        this.equalityToken = new Object();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayerId)) {
            return false;
        }
        PlayerId playerId = (PlayerId) obj;
        if (Objects.equals(this.name, playerId.name) && Objects.equals(this.logSessionIdApi31, playerId.logSessionIdApi31) && Objects.equals(this.equalityToken, playerId.equalityToken)) {
            return true;
        }
        return false;
    }

    @RequiresApi(31)
    public LogSessionId getLogSessionId() {
        return ((LogSessionIdApi31) Assertions.checkNotNull(this.logSessionIdApi31)).logSessionId;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.logSessionIdApi31, this.equalityToken);
    }

    @RequiresApi(31)
    public PlayerId(LogSessionId logSessionId, String str) {
        this(new LogSessionIdApi31(logSessionId), str);
    }

    private PlayerId(LogSessionIdApi31 logSessionIdApi31, String str) {
        this.logSessionIdApi31 = logSessionIdApi31;
        this.name = str;
        this.equalityToken = new Object();
    }
}
