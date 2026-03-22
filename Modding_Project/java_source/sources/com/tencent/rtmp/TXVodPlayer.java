package com.tencent.rtmp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.liteav.txcvodplayer.TXCVodVideoView;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.b.f;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.d;
import com.tencent.liteav.txcvodplayer.renderer.g;
import com.tencent.liteav.txcvodplayer.renderer.k;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.TXCCloudVideoViewMethodInvoker;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.rtmp.ui.TXSubtitleView;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXVodPlayer {
    public static final String TAG = "TXVodPlayer";
    private final com.tencent.liteav.a mPlayer;

    public TXVodPlayer(Context context) {
        com.tencent.liteav.a aVar = new com.tencent.liteav.a(context);
        this.mPlayer = aVar;
        innerLogI("[TXCVodPlayer:" + aVar.hashCode() + "], new TXVodPlayer");
    }

    public static String getEncryptedPlayKey(String str) {
        return com.tencent.liteav.a.b(str);
    }

    private void innerLogI(String str) {
        LiteavLog.i(TAG, "[" + hashCode() + "], " + str);
    }

    public void addSubtitleSource(String str, String str2, String str3) {
        innerLogI("addSubtitleSource url: " + str + " ,name: " + str2 + " ,mimeType: " + str3);
        com.tencent.liteav.a aVar = this.mPlayer;
        TXCVodVideoView tXCVodVideoView = aVar.e;
        if (!TextUtils.isEmpty(str)) {
            ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.c;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.addSubtitleSource(str, str2, str3);
            }
            if (tXCVodVideoView.h == null) {
                tXCVodVideoView.h = new ArrayList();
            }
            tXCVodVideoView.h.add(new TXCVodVideoView.b(str, str2, str3));
        }
        com.tencent.liteav.txcvodplayer.a.a aVar2 = aVar.g;
        if (aVar2 != null) {
            aVar2.a("use_ex_subtitle", "1");
        }
    }

    public void attachTRTC(Object obj) {
        innerLogI("attachTRTC: ".concat(String.valueOf(obj)));
        com.tencent.liteav.a aVar = this.mPlayer;
        if (obj != null) {
            aVar.B = obj;
            if (aVar.A == null) {
                d dVar = new d(aVar);
                aVar.A = dVar;
                synchronized (dVar) {
                    try {
                        if (dVar.f10350a != null) {
                            LiteavLog.w("VodRenderer", "VodRenderer is initialized!");
                        } else {
                            LiteavLog.i("VodRenderer", "initialize VodRenderer");
                            HandlerThread handlerThread = new HandlerThread("VodRenderer_" + dVar.hashCode());
                            handlerThread.start();
                            dVar.f10350a = new CustomHandler(handlerThread.getLooper());
                            dVar.a(k.a(dVar), MobileAdsBridgeBase.initializeMethodName);
                        }
                    } finally {
                    }
                }
            }
            TXCVodVideoView tXCVodVideoView = aVar.e;
            tXCVodVideoView.g = obj;
            ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.c;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.attachTRTC(obj);
            }
        }
    }

    public void deselectTrack(int i) {
        innerLogI("deselectTrack trackIndex: ".concat(String.valueOf(i)));
        TXCVodVideoView tXCVodVideoView = this.mPlayer.e;
        ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.deselectTrack(i);
            tXCVodVideoView.a(false, i);
        }
    }

    public void detachTRTC() {
        innerLogI("detachTRTC");
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.B = null;
        final d dVar = aVar.A;
        if (dVar != null) {
            dVar.a(false);
            dVar.a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.renderer.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    LiteavLog.i("VodRenderer", "uninitialize VodRenderer");
                    if (dVar.c != null) {
                        dVar.c.a((DisplayTarget) null, false);
                        d.d(dVar);
                    }
                    d.e(dVar);
                    dVar.a();
                    synchronized (dVar) {
                        try {
                            if (dVar.f10350a != null) {
                                dVar.f10350a.quitLooper();
                                d.g(dVar);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }, "uninitialize");
            aVar.A = null;
        }
        aVar.e();
        aVar.c();
        TXCVodVideoView tXCVodVideoView = aVar.e;
        tXCVodVideoView.g = null;
        ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.detachTRTC();
        }
    }

    public boolean enableHardwareDecode(boolean z) {
        innerLogI("enableHardwareDecode: ".concat(String.valueOf(z)));
        com.tencent.liteav.a aVar = this.mPlayer;
        if (z) {
            if (LiteavSystemInfo.getSystemOSVersionInt() < 18) {
                aVar.c("enableHardwareDecode failed, android system build.version = " + LiteavSystemInfo.getSystemOSVersionInt() + ", the minimum build.version should be 18(android 4.3 or later)");
                return false;
            } else if (LiteavSystemInfo.getManufacturer().equalsIgnoreCase("HUAWEI") && LiteavSystemInfo.getModel().equalsIgnoreCase("Che2-TL00")) {
                aVar.c("enableHardwareDecode failed, MANUFACTURER = " + LiteavSystemInfo.getManufacturer() + ", MODEL" + LiteavSystemInfo.getModel());
                return false;
            }
        }
        aVar.k = z;
        aVar.a(aVar.f);
        return true;
    }

    public List<TXTrackInfo> getAudioTrackInfo() {
        com.tencent.liteav.a aVar = this.mPlayer;
        List<TXTrackInfo> a2 = aVar.a();
        if (a2.isEmpty()) {
            return new ArrayList(0);
        }
        aVar.a("use_audiotrack", "1");
        return com.tencent.liteav.a.a(a2, 2);
    }

    public int getBitrateIndex() {
        return this.mPlayer.e.getBitrateIndex();
    }

    public float getBufferDuration() {
        return ((float) this.mPlayer.e.getBufferDuration()) / 1000.0f;
    }

    public float getCurrentPlaybackTime() {
        return ((float) this.mPlayer.e.getCurrentPosition()) / 1000.0f;
    }

    public float getDuration() {
        float duration = this.mPlayer.e.getDuration() / 1000.0f;
        innerLogI("getDuration: ".concat(String.valueOf(duration)));
        return duration;
    }

    public int getHeight() {
        int videoHeight = this.mPlayer.e.getVideoHeight();
        innerLogI("getHeight: ".concat(String.valueOf(videoHeight)));
        return videoHeight;
    }

    public float getPlayableDuration() {
        return ((float) this.mPlayer.e.getBufferDuration()) / 1000.0f;
    }

    public List<TXTrackInfo> getSubtitleTrackInfo() {
        com.tencent.liteav.a aVar = this.mPlayer;
        List<TXTrackInfo> a2 = aVar.a();
        if (a2.isEmpty()) {
            return new ArrayList(0);
        }
        aVar.a("use_ex_subtitle", "1");
        return com.tencent.liteav.a.a(a2, 3);
    }

    public ArrayList<TXBitrateItem> getSupportedBitrates() {
        com.tencent.liteav.a aVar = this.mPlayer;
        ArrayList<TXBitrateItem> arrayList = new ArrayList<>();
        ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = aVar.e.getSupportedBitrates();
        if (supportedBitrates != null) {
            int size = supportedBitrates.size();
            int i = 0;
            while (i < size) {
                com.tencent.liteav.txcplayer.model.a aVar2 = supportedBitrates.get(i);
                i++;
                com.tencent.liteav.txcplayer.model.a aVar3 = aVar2;
                TXBitrateItem tXBitrateItem = new TXBitrateItem();
                tXBitrateItem.index = aVar3.f10294a;
                tXBitrateItem.width = aVar3.b;
                tXBitrateItem.height = aVar3.c;
                tXBitrateItem.bitrate = aVar3.d;
                arrayList.add(tXBitrateItem);
            }
        }
        return arrayList;
    }

    public int getWidth() {
        int videoWidth = this.mPlayer.e.getVideoWidth();
        innerLogI("getWidth: ".concat(String.valueOf(videoWidth)));
        return videoWidth;
    }

    public boolean isLoop() {
        return this.mPlayer.y;
    }

    public boolean isPlaying() {
        TXCVodVideoView tXCVodVideoView = this.mPlayer.e;
        if (tXCVodVideoView.b() && tXCVodVideoView.c.isPlaying() && tXCVodVideoView.f10298a != 4) {
            return true;
        }
        return false;
    }

    public void pause() {
        innerLogI(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        com.tencent.liteav.a aVar = this.mPlayer;
        TXCVodVideoView tXCVodVideoView = aVar.e;
        tXCVodVideoView.b = 4;
        tXCVodVideoView.a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        if (tXCVodVideoView.b()) {
            try {
                tXCVodVideoView.c.pause();
                tXCVodVideoView.t.removeMessages(103);
            } catch (Exception e) {
                tXCVodVideoView.b("pause exception: " + e.getMessage());
            }
            tXCVodVideoView.f10298a = 4;
        }
        com.tencent.liteav.txcvodplayer.a.a aVar2 = aVar.g;
        if (aVar2 != null) {
            aVar2.b("pause " + aVar2.k);
            if (!aVar2.f) {
                aVar2.k += System.currentTimeMillis() - aVar2.d;
            }
            aVar2.f = true;
            aVar2.d = System.currentTimeMillis();
            if (aVar2.l == -1) {
                aVar2.g = true;
            }
        }
        aVar.c(true);
    }

    public void publishAudio() {
        innerLogI("publishAudio");
        this.mPlayer.d();
    }

    public void publishVideo() {
        innerLogI("publishVideo");
        this.mPlayer.b();
    }

    public void resume() {
        innerLogI(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.e.setAutoPlay(true);
        aVar.e.c(false);
        com.tencent.liteav.txcvodplayer.a.a aVar2 = aVar.g;
        if (aVar2 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            aVar2.d = currentTimeMillis;
            if (aVar2.g) {
                aVar2.b = currentTimeMillis;
                aVar2.g = false;
            }
            aVar2.b("[resume], mBeginPlayTS = " + aVar2.d + " ,mIsPreLoading = " + aVar2.g);
            aVar2.f = false;
        }
        aVar.c(false);
    }

    public void seek(int i) {
        innerLogI("seek time: ".concat(String.valueOf(i)));
        com.tencent.liteav.a aVar = this.mPlayer;
        float f = i;
        TXVodPlayConfig tXVodPlayConfig = aVar.f;
        aVar.a(f, tXVodPlayConfig != null ? tXVodPlayConfig.isEnableAccurateSeek() : false);
    }

    public void seekToPdtTime(long j) {
        boolean z;
        com.tencent.liteav.txcvodplayer.a.a aVar;
        innerLogI("seek pdtTimeMs: ".concat(String.valueOf(j)));
        com.tencent.liteav.a aVar2 = this.mPlayer;
        TXCVodVideoView tXCVodVideoView = aVar2.e;
        if (!TXCVodVideoView.i) {
            tXCVodVideoView.a("seekToPdtTime has no advanced license! not support PDT seek.");
        } else {
            tXCVodVideoView.a("seekToPdtTime:".concat(String.valueOf(j)));
            int positionMs = (int) tXCVodVideoView.c.getPositionMs(j);
            if (positionMs >= 0) {
                int min = Math.min(positionMs, tXCVodVideoView.getDuration());
                e eVar = tXCVodVideoView.d;
                if (eVar != null) {
                    z = eVar.i;
                } else {
                    z = false;
                }
                tXCVodVideoView.a(min, z);
            }
        }
        if (aVar2.h && (aVar = aVar2.g) != null) {
            aVar.f();
        }
        aVar2.a("use_pdt", "1");
    }

    public void selectTrack(int i) {
        innerLogI("selectTrack trackIndex: ".concat(String.valueOf(i)));
        this.mPlayer.e.a(i);
    }

    public void setAudioNormalization(float f) {
        innerLogI("setAudioNormalization: ".concat(String.valueOf(f)));
        this.mPlayer.e.setAudioNormalization(f);
    }

    public void setAudioPlayoutVolume(int i) {
        innerLogI("setAudioPlayoutVolume: ".concat(String.valueOf(i)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.v = i;
        aVar.e.setAudioPlayoutVolume(i);
    }

    public void setAutoMaxBitrate(int i) {
        innerLogI("setAutoMaxBitrate: ".concat(String.valueOf(i)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.D = i;
        aVar.e.setAutoMaxBitrate(i);
    }

    public void setAutoPlay(boolean z) {
        innerLogI("setAutoPlay: ".concat(String.valueOf(z)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.j = z;
        aVar.e.setAutoPlay(z);
    }

    public void setBitrateIndex(int i) {
        innerLogI("setBitrateIndex: ".concat(String.valueOf(i)));
        this.mPlayer.c(i);
    }

    public void setConfig(TXVodPlayConfig tXVodPlayConfig) {
        this.mPlayer.a(tXVodPlayConfig);
    }

    public void setLoop(boolean z) {
        innerLogI("setLoop: ".concat(String.valueOf(z)));
        this.mPlayer.y = z;
    }

    public void setMirror(boolean z) {
        innerLogI("setMirror: ".concat(String.valueOf(z)));
        this.mPlayer.b(z);
    }

    public void setMute(boolean z) {
        innerLogI("setMute: ".concat(String.valueOf(z)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.u = z;
        aVar.e.setMute(z);
    }

    @Deprecated
    public void setPlayListener(ITXLivePlayListener iTXLivePlayListener) {
        innerLogI("setPlayListener: ".concat(String.valueOf(iTXLivePlayListener)));
        this.mPlayer.b = iTXLivePlayListener;
    }

    public void setPlayerView(TXCloudVideoView tXCloudVideoView) {
        innerLogI("setPlayerView TXCloudVideoView: ".concat(String.valueOf(tXCloudVideoView)));
        com.tencent.liteav.a aVar = this.mPlayer;
        TXCloudVideoView tXCloudVideoView2 = aVar.f10175a;
        if (tXCloudVideoView != tXCloudVideoView2) {
            if (tXCloudVideoView2 != null) {
                tXCloudVideoView2.removeVideoView();
                aVar.e.setRenderView(null);
            }
            if (tXCloudVideoView != 0) {
                tXCloudVideoView.removeVideoView();
            }
        }
        if (tXCloudVideoView != null) {
            tXCloudVideoView.setVisibility(0);
            if (aVar.A != null && aVar.B != null) {
                if (TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(tXCloudVideoView) == null) {
                    tXCloudVideoView.addVideoView(new TextureView(tXCloudVideoView.getContext()));
                    d dVar = aVar.A;
                    dVar.a(g.a(dVar, new DisplayTarget(tXCloudVideoView)), "setDisplayTarget");
                }
            } else if (TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(tXCloudVideoView) == null) {
                TextureRenderView textureRenderView = new TextureRenderView(tXCloudVideoView.getContext());
                tXCloudVideoView.addVideoView(textureRenderView);
                aVar.e.setTextureRenderView(textureRenderView);
            }
            com.tencent.liteav.a.a(tXCloudVideoView, 0);
        }
        aVar.f10175a = tXCloudVideoView;
    }

    public void setRate(float f) {
        innerLogI("setRate: ".concat(String.valueOf(f)));
        this.mPlayer.a(f);
    }

    public void setRenderMode(int i) {
        innerLogI("setRenderMode: ".concat(String.valueOf(i)));
        this.mPlayer.a(i);
    }

    public void setRenderRotation(int i) {
        innerLogI("setRenderRotation: ".concat(String.valueOf(i)));
        this.mPlayer.b(i);
    }

    public boolean setRequestAudioFocus(boolean z) {
        innerLogI("setRequestAudioFocus: ".concat(String.valueOf(z)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.i = z;
        return aVar.e.d(z);
    }

    public void setStartTime(float f) {
        innerLogI("setStartTime: ".concat(String.valueOf(f)));
        this.mPlayer.b(f);
    }

    public void setStringOption(String str, Object obj) {
        innerLogI("setStringOption key: " + str + " ,value: " + obj);
        com.tencent.liteav.a aVar = this.mPlayer;
        final TXCVodVideoView tXCVodVideoView = aVar.e;
        if (!TextUtils.isEmpty(str)) {
            if ((TextUtils.equals(str, TXVodConstants.PLAYER_OPTION_PARAM_MODULE_TYPE) || TextUtils.equals(str, "PARAM_SUPER_RESOLUTION_TYPE")) && (obj instanceof Integer)) {
                tXCVodVideoView.n = ((Integer) obj).intValue();
                RenderProcessService.getInstance().updateRenderProcessMode(tXCVodVideoView.c, tXCVodVideoView.n);
                tXCVodVideoView.a("updateRenderProcessMode:" + tXCVodVideoView.n);
            }
            if (TextUtils.equals(str, TXVodConstants.PLAYER_OPTION_PARAM_MODULE_CONFIG)) {
                if (obj == null) {
                    tXCVodVideoView.o = null;
                } else if (obj instanceof Map) {
                    tXCVodVideoView.o = (Map) obj;
                }
            }
            if (str.startsWith("MONET_AC_")) {
                RenderProcessService.getInstance().doAction(tXCVodVideoView.c, str, obj);
            }
            if (TextUtils.equals(str, TXVodConstants.VOD_KEY_BACKUP_URL)) {
                if (obj != null && (obj instanceof String)) {
                    tXCVodVideoView.l = (String) obj;
                } else {
                    tXCVodVideoView.l = "";
                }
                tXCVodVideoView.a("setStringOption mBackupPlayUrl: " + tXCVodVideoView.l);
            }
            if (TextUtils.equals(str, TXVodConstants.VOD_KEY_MIMETYPE)) {
                if (obj != null && (obj instanceof String)) {
                    if (((String) obj).equals("video/hevc")) {
                        tXCVodVideoView.k = true;
                        if (!TXCVodVideoView.j) {
                            TXCVodVideoView.j = true;
                            com.tencent.liteav.txcplayer.common.a.a().execute(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (!com.tencent.liteav.txcplayer.a.b.a("video/hevc")) {
                                        TXCVodVideoView.f();
                                        TXCVodVideoView.this.a("not support hevc!");
                                    }
                                }
                            });
                        }
                    }
                } else {
                    tXCVodVideoView.k = false;
                }
            }
            if (TextUtils.equals(str, TXVodConstants.VOD_KEY_BACKUP_URL_MEDIA_TYPE)) {
                if (obj instanceof Integer) {
                    tXCVodVideoView.m = ((Integer) obj).intValue();
                }
                tXCVodVideoView.a("setStringOption backupUrlMediaType:" + tXCVodVideoView.m);
            }
        }
        if ((TextUtils.equals(str, TXVodConstants.PLAYER_OPTION_PARAM_MODULE_TYPE) || TextUtils.equals(str, "PARAM_SUPER_RESOLUTION_TYPE")) && obj != null && (obj instanceof Integer)) {
            int intValue = ((Integer) obj).intValue();
            if (intValue == 1) {
                aVar.a("use_sr", "1");
            } else if (intValue == 11 || intValue == 12) {
                aVar.a("use_vr", "1");
            }
        }
    }

    public void setSubtitleStyle(TXSubtitleRenderModel tXSubtitleRenderModel) {
        String str;
        if ("setSubtitleStyle renderModel: ".concat(String.valueOf(tXSubtitleRenderModel)) != null) {
            str = tXSubtitleRenderModel.toString();
        } else {
            str = AbstractJsonLexerKt.NULL;
        }
        innerLogI(str);
        this.mPlayer.e.setSubtitleStyle(tXSubtitleRenderModel);
    }

    public void setSubtitleView(TXSubtitleView tXSubtitleView) {
        innerLogI("setSubtitleView subtitleView: ".concat(String.valueOf(tXSubtitleView)));
        this.mPlayer.C = tXSubtitleView;
    }

    public void setSurface(Surface surface) {
        innerLogI("setSurface: ".concat(String.valueOf(surface)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.l = surface;
        aVar.e.setRenderSurface(surface);
    }

    public void setToken(String str) {
        innerLogI("setToken: ".concat(String.valueOf(str)));
        this.mPlayer.n = str;
    }

    public void setVodListener(ITXVodPlayListener iTXVodPlayListener) {
        innerLogI("setVodListener: ".concat(String.valueOf(iTXVodPlayListener)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.d = this;
        aVar.c = iTXVodPlayListener;
    }

    public void setVodSubtitleDataListener(final ITXVodPlayListener.ITXVodSubtitleDataListener iTXVodSubtitleDataListener) {
        innerLogI("setVodSubtitleDataListener: ".concat(String.valueOf(iTXVodSubtitleDataListener)));
        final com.tencent.liteav.a aVar = this.mPlayer;
        aVar.e.setTXCOnSubtitleDataListener(new ITXVCubePlayer.i() { // from class: com.tencent.liteav.a.6
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleData tPSubtitleData) {
                ITXVodPlayListener.ITXVodSubtitleDataListener iTXVodSubtitleDataListener2 = iTXVodSubtitleDataListener;
                if (iTXVodSubtitleDataListener2 != null) {
                    iTXVodSubtitleDataListener2.onSubtitleData(a.a(tPSubtitleData));
                }
            }
        });
    }

    public void snapshot(final TXLivePlayer.ITXSnapshotListener iTXSnapshotListener) {
        innerLogI("snapshot listener: ".concat(String.valueOf(iTXSnapshotListener)));
        final com.tencent.liteav.a aVar = this.mPlayer;
        if (!aVar.q && iTXSnapshotListener != null) {
            aVar.q = true;
            TextureView textureViewSetByUser = TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(aVar.f10175a);
            if (textureViewSetByUser != null) {
                final Bitmap bitmap = textureViewSetByUser.getBitmap();
                if (bitmap != null) {
                    Matrix transform = textureViewSetByUser.getTransform(null);
                    if (aVar.x) {
                        transform.postScale(-1.0f, 1.0f);
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), transform, true);
                    bitmap.recycle();
                    bitmap = createBitmap;
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.a.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        TXLivePlayer.ITXSnapshotListener iTXSnapshotListener2 = iTXSnapshotListener;
                        if (iTXSnapshotListener2 != null) {
                            iTXSnapshotListener2.onSnapshot(bitmap);
                        }
                        a.v(a.this);
                    }
                });
                return;
            }
            aVar.q = false;
        }
    }

    public int startPlayDrm(TXPlayerDrmBuilder tXPlayerDrmBuilder) {
        String str;
        if ("startPlayDrm: ".concat(String.valueOf(tXPlayerDrmBuilder)) != null) {
            str = tXPlayerDrmBuilder.toString();
        } else {
            str = AbstractJsonLexerKt.NULL;
        }
        innerLogI(str);
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.r = null;
        if (tXPlayerDrmBuilder != null) {
            return aVar.a(tXPlayerDrmBuilder.getPlayUrl(), tXPlayerDrmBuilder.getKeyLicenseUrl(), tXPlayerDrmBuilder.getDeviceCertificateUrl(), null, null);
        }
        return -1;
    }

    public int startVodPlay(String str) {
        String str2;
        innerLogI("startPlay url: ".concat(String.valueOf(str)));
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.r = null;
        if (TextUtils.equals(str, aVar.t)) {
            Object obj = aVar.o.get("TXC_DRM_ENABLE");
            if (obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false) {
                return aVar.a(str, (String) aVar.o.get("TXC_DRM_KEY_URL"), new TXPlayerDrmBuilder().getDeviceCertificateUrl(), (String) aVar.o.get("TXC_DRM_SIMPLE_AES_URL"), aVar.s);
            }
            str2 = str;
        } else {
            str2 = str;
            aVar.s = null;
        }
        aVar.g();
        return aVar.a(str2);
    }

    public int stopPlay(boolean z) {
        innerLogI("stopPlay isNeedClearLastImg: ".concat(String.valueOf(z)));
        return this.mPlayer.a(z);
    }

    public void unpublishAudio() {
        innerLogI("unpublishAudio");
        this.mPlayer.e();
    }

    public void unpublishVideo() {
        innerLogI("unpublishVideo");
        this.mPlayer.c();
    }

    public void seek(float f) {
        innerLogI("seek time: ".concat(String.valueOf(f)));
        com.tencent.liteav.a aVar = this.mPlayer;
        TXVodPlayConfig tXVodPlayConfig = aVar.f;
        aVar.a(f, tXVodPlayConfig != null ? tXVodPlayConfig.isEnableAccurateSeek() : false);
    }

    public void seek(float f, boolean z) {
        innerLogI("seek time: " + f + " ,isAccurateSeek: " + z);
        this.mPlayer.a(f, z);
    }

    @Deprecated
    public int startVodPlay(TXPlayerAuthBuilder tXPlayerAuthBuilder) {
        innerLogI("startPlay [FileId=" + tXPlayerAuthBuilder.fileId + "][Timeout=" + tXPlayerAuthBuilder.timeout + "][Unique identification request=" + tXPlayerAuthBuilder.us + "][Trial duration=" + tXPlayerAuthBuilder.exper + "][Sign=" + tXPlayerAuthBuilder.sign + "][player=" + hashCode() + "]");
        final com.tencent.liteav.a aVar = this.mPlayer;
        aVar.r = null;
        aVar.g();
        aVar.s = null;
        com.tencent.liteav.txcvodplayer.b.d dVar = new com.tencent.liteav.txcvodplayer.b.d();
        aVar.w = dVar;
        dVar.e = tXPlayerAuthBuilder.isHttps();
        aVar.w.a(new com.tencent.liteav.txcvodplayer.b.e() { // from class: com.tencent.liteav.a.1
            @Override // com.tencent.liteav.txcvodplayer.b.e
            public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2) {
                if (dVar2 != a.this.w) {
                    return;
                }
                f a2 = dVar2.a();
                a.this.a(a2.a());
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, 2010);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", "Requested file information successfully");
                bundle.putString("EVT_PLAY_URL", a2.a());
                bundle.putString("EVT_PLAY_COVER_URL", a2.d());
                bundle.putString("EVT_PLAY_NAME", a2.g());
                bundle.putString("EVT_PLAY_DESCRIPTION", a2.h());
                if (a2.f() != null) {
                    bundle.putInt("EVT_PLAY_DURATION", a2.f().e);
                }
                a.this.a(2010, bundle);
                a.this.c("onNetSuccess: Requested file information successfully");
            }

            @Override // com.tencent.liteav.txcvodplayer.b.e
            public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2, String str, int i) {
                if (dVar2 != a.this.w) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, -2306);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", str);
                bundle.putInt("EVT_PARAM1", i);
                a.this.a(-2306, bundle);
                a.this.c("onNetFailed: eventId: -2306 description:".concat(String.valueOf(str)));
            }
        });
        aVar.c("startPlayv2 ,appid:" + tXPlayerAuthBuilder.getAppId() + " ,FileId:" + tXPlayerAuthBuilder.getFileId() + " ,Timeout:" + tXPlayerAuthBuilder.getTimeout() + " ,us:" + tXPlayerAuthBuilder.getUs() + " exper:" + tXPlayerAuthBuilder.getExper() + " ,sign" + tXPlayerAuthBuilder.getSign());
        return aVar.w.a(tXPlayerAuthBuilder.getAppId(), tXPlayerAuthBuilder.getFileId(), tXPlayerAuthBuilder.getTimeout(), tXPlayerAuthBuilder.getUs(), tXPlayerAuthBuilder.getExper(), tXPlayerAuthBuilder.getSign());
    }

    public void setPlayerView(TextureRenderView textureRenderView) {
        innerLogI("setPlayerView TextureRenderView: ".concat(String.valueOf(textureRenderView)));
        this.mPlayer.e.setRenderView(textureRenderView);
    }

    public void startVodPlay(final TXPlayInfoParams tXPlayInfoParams) {
        innerLogI("startPlay playInfoParams: ".concat(String.valueOf(tXPlayInfoParams)) != null ? tXPlayInfoParams.toString() : AbstractJsonLexerKt.NULL);
        final com.tencent.liteav.a aVar = this.mPlayer;
        aVar.r = tXPlayInfoParams;
        aVar.g();
        if (tXPlayInfoParams != null) {
            int i = aVar.p;
            aVar.a(false);
            aVar.p = i;
            aVar.m = false;
            c cVar = new c(tXPlayInfoParams);
            aVar.c("[TXCPlayInfoProtocolV4:" + cVar.hashCode() + "], create TXCPlayInfoProtocolV4: " + tXPlayInfoParams);
            cVar.a(new c.a() { // from class: com.tencent.liteav.a.2
                @Override // com.tencent.liteav.txcvodplayer.b.c.a
                public final void a(c cVar2, TXPlayInfoParams tXPlayInfoParams2) {
                    a.this.c("onSuccess: Requested file information successfully: ".concat(String.valueOf(tXPlayInfoParams2)));
                    if (a.this.m) {
                        return;
                    }
                    if (a.this.r == null || TextUtils.equals(tXPlayInfoParams2.getFileId(), a.this.r.getFileId())) {
                        if ("SimpleAES".equalsIgnoreCase(cVar2.l())) {
                            a.this.s = cVar2.d;
                            com.tencent.liteav.txcvodplayer.c.a.a().b();
                        } else {
                            a.this.s = null;
                        }
                        String b = cVar2.b();
                        String a2 = cVar2.a("Widevine");
                        if (TextUtils.isEmpty(a2)) {
                            a.this.g();
                            if (!TextUtils.isEmpty(b)) {
                                String a3 = com.tencent.liteav.txcplayer.a.a.a(b, cVar2.d());
                                a.this.n = null;
                                String l = cVar2.l();
                                if (TextUtils.isEmpty(l)) {
                                    l = "plain";
                                }
                                a.this.a(com.tencent.liteav.txcplayer.a.a.a(a3, tXPlayInfoParams2.getFileId(), l, tXPlayInfoParams2.getAppId()));
                            }
                        } else {
                            a.this.n = null;
                            a.this.a(a2, cVar2.m(), new TXPlayerDrmBuilder().getDeviceCertificateUrl(), com.tencent.liteav.txcplayer.a.a.a(b, cVar2.d()), !TextUtils.isEmpty(b) ? cVar2.d : null);
                        }
                        Bundle bundle = new Bundle();
                        bundle.putInt(TXVodConstants.EVT_ID, 2010);
                        bundle.putLong("EVT_TIME", TimeUtil.a());
                        bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                        bundle.putString("EVT_MSG", "Requested file information successfully");
                        bundle.putString("EVT_PLAY_URL", a.this.t);
                        bundle.putString("EVT_PLAY_COVER_URL", cVar2.c());
                        bundle.putString("EVT_PLAY_NAME", cVar2.e());
                        bundle.putString("EVT_PLAY_DESCRIPTION", cVar2.f());
                        bundle.putInt("EVT_PLAY_DURATION", cVar2.g());
                        com.tencent.liteav.txcvodplayer.b.b bVar = cVar2.c;
                        bundle.putString(TXVodConstants.EVT_KEY_WATER_MARK_TEXT, bVar != null ? bVar.f : null);
                        c.C0210c i2 = cVar2.i();
                        if (i2 != null) {
                            bundle.putString(TXVodConstants.EVT_IMAGESPRIT_WEBVTTURL, i2.b);
                            bundle.putStringArrayList(TXVodConstants.EVT_IMAGESPRIT_IMAGEURL_LIST, i2.f10328a);
                        }
                        List<c.d> j = cVar2.j();
                        if (j != null && !j.isEmpty()) {
                            ArrayList<String> arrayList = new ArrayList<>();
                            float[] fArr = new float[j.size()];
                            for (int i3 = 0; i3 < j.size(); i3++) {
                                arrayList.add(j.get(i3).f10329a);
                                fArr[i3] = j.get(i3).b;
                            }
                            bundle.putStringArrayList(TXVodConstants.EVT_KEY_FRAME_CONTENT_LIST, arrayList);
                            bundle.putFloatArray(TXVodConstants.EVT_KEY_FRAME_TIME_LIST, fArr);
                        }
                        bundle.putString(TXVodConstants.EVT_DRM_TYPE, cVar2.l());
                        a.this.a(2010, bundle);
                    }
                }

                @Override // com.tencent.liteav.txcvodplayer.b.c.a
                public final void a(int i2, String str) {
                    a.this.e("onFail: errorCode = " + i2 + " message = " + str);
                    Bundle bundle = new Bundle();
                    bundle.putInt(TXVodConstants.EVT_ID, -2306);
                    bundle.putLong("EVT_TIME", TimeUtil.a());
                    bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                    bundle.putString("EVT_MSG", str);
                    bundle.putInt("EVT_PARAM1", i2);
                    com.tencent.liteav.txcvodplayer.a.a aVar2 = new com.tencent.liteav.txcvodplayer.a.a(a.this.F);
                    aVar2.a(String.valueOf(tXPlayInfoParams.getAppId()));
                    aVar2.u = tXPlayInfoParams.getFileId();
                    aVar2.s = a.this.e.getPlayerType();
                    aVar2.a(a.this.j);
                    if (i2 == -1) {
                        i2 = -2306;
                    }
                    aVar2.a(i2, str);
                    aVar2.a();
                    a.this.a(-2306, bundle);
                    a.this.c("onError: eventId: -2306 description:".concat(String.valueOf(str)));
                }
            });
        }
    }
}
