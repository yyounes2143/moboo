package com.fluttercandies.photo_manager.core.utils;

import android.media.MediaPlayer;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;", "", "<init>", "()V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;", "VideoInfo", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class VideoUtils {
    @NotNull
    public static final VideoUtils INSTANCE = new VideoUtils();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0011\u0010\u0014\"\u0004\b\u0019\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;", "", "", "width", "height", TypedValues.TransitionType.S_DURATION, "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Integer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Integer;", "setWidth", "(Ljava/lang/Integer;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setHeight", "setDuration", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class VideoInfo {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Integer f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Integer f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Integer f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public VideoInfo(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
            this.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = num;
            this.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = num2;
            this.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = num3;
        }

        @Nullable
        public final Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VideoInfo)) {
                return false;
            }
            VideoInfo videoInfo = (VideoInfo) obj;
            if (Intrinsics.areEqual(this.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, videoInfo.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, videoInfo.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, videoInfo.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            Integer num = this.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i2 = hashCode * 31;
            Integer num2 = this.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (num2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = num2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            Integer num3 = this.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (num3 != null) {
                i = num3.hashCode();
            }
            return i3 + i;
        }

        @NotNull
        public String toString() {
            Integer num = this.f7475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Integer num2 = this.f7474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Integer num3 = this.f7473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "VideoInfo(width=" + num + ", height=" + num2 + ", duration=" + num3 + ")";
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaPlayer mediaPlayer, int i, int i2) {
        return true;
    }

    @NotNull
    public final VideoInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setDataSource(str);
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaPlayer2, i, i2);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        });
        try {
            mediaPlayer.prepare();
            mediaPlayer.getVideoHeight();
            VideoInfo videoInfo = new VideoInfo(Integer.valueOf(mediaPlayer.getVideoWidth()), Integer.valueOf(mediaPlayer.getVideoHeight()), Integer.valueOf(mediaPlayer.getDuration()));
            mediaPlayer.stop();
            mediaPlayer.release();
            return videoInfo;
        } catch (Throwable unused) {
            mediaPlayer.release();
            return new VideoInfo(null, null, null);
        }
    }
}
