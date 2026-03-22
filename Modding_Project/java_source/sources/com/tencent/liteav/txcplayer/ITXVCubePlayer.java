package com.tencent.liteav.txcplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ITXVCubePlayer {
    public static final int INDEX_AUTO = -1;
    public static final int INITIAL_BITRATE_INDEX_VALUE = -1000;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        int a();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface b {
        void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface c {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface d {
        void a();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface e {
        boolean a(int i, int i2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface f {
        boolean a(int i, int i2, int i3, Object obj);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface g {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface h {
        void a();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface i {
        void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleData tPSubtitleData);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface j {
        void a(ITXVCubePlayer iTXVCubePlayer, int i, int i2, String str);
    }

    void addSubtitleSource(String str, String str2, String str3);

    void attachTRTC(Object obj);

    void checkSubtitle();

    void deselectTrack(int i2);

    void detachTRTC();

    void enableAdaptiveBitrate();

    int getBitrateIndex();

    long getCurrentPosition();

    long getDuration();

    com.tencent.liteav.txcplayer.model.b getMediaInfo();

    long getPdtTimeMs(long j2);

    long getPlayableDurationMs();

    long getPositionMs(long j2);

    long getPropertyLong(int i2) throws IllegalStateException;

    float getRate();

    ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates();

    Surface getSurface();

    TPTrackInfo[] getTrackInfo();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    boolean isEnableRenderProcess();

    boolean isLooping();

    @Deprecated
    boolean isPlayable();

    boolean isPlaying();

    void pause() throws IllegalStateException;

    void prepareAsync() throws IllegalStateException;

    void publishAudioToNetwork();

    void release();

    void releaseSurfaceTexture();

    void releaseTextureHost();

    void reset();

    void seekTo(long j2, boolean z) throws IllegalStateException;

    void selectTrack(int i2);

    void setAudioNormalization(float f2);

    void setAudioStreamType(int i2);

    void setAudioVolume(int i2);

    void setAutoMaxBitrate(int i2);

    void setBitrateIndex(int i2);

    void setConfig(com.tencent.liteav.txcplayer.e eVar);

    void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException;

    void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDisplay(SurfaceHolder surfaceHolder);

    void setEnableRenderProcess(boolean z);

    @Deprecated
    void setKeepInBackground(boolean z);

    @Deprecated
    void setLogEnabled(boolean z);

    void setLooping(boolean z);

    void setOnBufferingUpdateListener(c cVar);

    void setOnCompletionListener(d dVar);

    void setOnErrorListener(e eVar);

    void setOnGetTXCVodVideoViewTargetState(a aVar);

    void setOnInfoListener(f fVar);

    void setOnPreparedListener(g gVar);

    void setOnSeekCompleteListener(h hVar);

    void setOnSubtitleDataListener(i iVar);

    void setOnSubtitleFrameDataListener(b bVar);

    void setOnVideoSizeChangedListener(j jVar);

    void setPrivateConfig(Map<String, Object> map);

    void setRate(float f2);

    void setScreenOnWhilePlaying(boolean z);

    void setSubtitleStyle(TXSubtitleRenderModel tXSubtitleRenderModel);

    void setSurface(Surface surface);

    void setSurfaceTexture(SurfaceTexture surfaceTexture);

    @Deprecated
    void setWakeMode(Context context, int i2);

    void start() throws IllegalStateException;

    void stop() throws IllegalStateException;

    void unpublishAudioToNetwork();
}
