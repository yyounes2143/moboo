package com.tencent.liteav;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.datareport.Event4XReporter;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.SoLoader;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.base.util.l;
import com.tencent.liteav.base.util.s;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.common.VodPlayerControl;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcvodplayer.TXCVodVideoView;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.c;
import com.tencent.liteav.txcvodplayer.renderer.d;
import com.tencent.liteav.txcvodplayer.renderer.h;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.TXCCloudVideoViewMethodInvoker;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.TXTrackInfo;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.rtmp.TXVodDef;
import com.tencent.rtmp.TXVodPlayConfig;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.rtmp.ui.TXSubtitleView;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGLContext;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a implements d.a {
    private static final String E = new String(Base64.decode("aHR0cHM6Ly9jbG91ZC50ZW5jZW50LmNvbS9hY3QvZXZlbnQvTGljZW5zZQ==", 0));
    public d A;
    public Object B;
    public TXSubtitleView C;
    private Context F;
    private HashMap<String, String> G;
    private long J;
    private int K;
    private int L;
    private boolean M;
    private b N;
    private boolean O;
    private boolean P;
    private c Q;
    private PixelFrame S;
    private HandlerC0204a T;
    public ITXLivePlayListener b;
    public ITXVodPlayListener c;
    public TXVodPlayer d;
    public TXCVodVideoView e;
    public TXVodPlayConfig f;
    public boolean h;
    public Surface l;
    public String n;
    public final Map<String, Object> o;
    public TXPlayInfoParams r;
    public c.b s;
    public com.tencent.liteav.txcvodplayer.b.d w;
    public boolean x;
    public boolean y;
    protected float z;

    /* renamed from: a  reason: collision with root package name */
    public TXCloudVideoView f10175a = null;
    public com.tencent.liteav.txcvodplayer.a.a g = null;
    private boolean H = false;
    public boolean i = true;
    public boolean j = true;
    public boolean k = true;
    private float I = 1.0f;
    public boolean m = false;
    public int p = -1000;
    public boolean q = false;
    public String t = "";
    public boolean u = false;
    public int v = -1;
    public int D = -1;
    private AtomicBoolean R = new AtomicBoolean(false);
    private com.tencent.liteav.txcplayer.d U = new com.tencent.liteav.txcplayer.d() { // from class: com.tencent.liteav.a.3
        @Override // com.tencent.liteav.txcplayer.d
        public final void a(int i, Bundle bundle) {
            int i2;
            String str;
            Bundle bundle2 = new Bundle(bundle);
            if (i == -6101) {
                a.this.g.a(TXVodConstants.VOD_PLAY_ERR_DRM, bundle.getString("description", ""));
            } else if (i == -2301) {
                a.this.g.a(-2301, bundle.getString("description", ""));
            } else if (i == 2011) {
                bundle2.putInt("EVT_PARAM1", a.this.e.getMetaRotationDegree());
            } else if (i != 2026 && i != 2103) {
                if (i != 2106) {
                    if (i != 2013) {
                        int i3 = 1;
                        if (i != 2014) {
                            if (i != 2030 && i != 2031) {
                                switch (i) {
                                    case TXVodConstants.VOD_PLAY_ERR_DOWNLOAD_FAIL /* -6011 */:
                                    case TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL /* -6010 */:
                                    case TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL /* -6009 */:
                                    case TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL /* -6008 */:
                                    case TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL /* -6007 */:
                                    case TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL /* -6006 */:
                                    case TXVodConstants.VOD_PLAY_ERR_DEMUXER_TIMEOUT /* -6005 */:
                                    case TXVodConstants.VOD_PLAY_ERR_SYSTEM_PLAY_FAIL /* -6004 */:
                                    case TXVodConstants.VOD_PLAY_ERR_DEMUXER_FAIL /* -6003 */:
                                    case TXVodConstants.VOD_PLAY_ERR_GENERAL /* -6002 */:
                                    case TXVodConstants.VOD_PLAY_ERR_UNKNOW /* -6001 */:
                                        a.this.g.a(i, bundle.getString("description", ""));
                                        break;
                                    default:
                                        switch (i) {
                                            case -2305:
                                                a.this.g.a(-2305, "HLS decrypt key error");
                                                break;
                                            case -2304:
                                                a.this.g.a(-2304, "h265 decode failed");
                                                a.this.g.a("support_hevc", "0");
                                                if (!a.this.h) {
                                                    a.n(a.this);
                                                    a aVar = a.this;
                                                    aVar.a(aVar.f);
                                                    break;
                                                }
                                                break;
                                            case -2303:
                                                a.this.g.a(-2303, "file not found");
                                                break;
                                            default:
                                                switch (i) {
                                                    case 2002:
                                                    case 2008:
                                                        break;
                                                    case 2003:
                                                        Bundle bundle3 = bundle2.getBundle("extra");
                                                        if (bundle3 != null) {
                                                            String string = bundle3.getString("support_hevc");
                                                            if (!TextUtils.isEmpty(string)) {
                                                                a.this.g.a("support_hevc", string);
                                                            }
                                                            bundle2.remove("extra");
                                                        }
                                                        com.tencent.liteav.txcvodplayer.a.a aVar2 = a.this.g;
                                                        int videoWidth = a.this.e.getVideoWidth();
                                                        int videoHeight = a.this.e.getVideoHeight();
                                                        aVar2.C = videoWidth;
                                                        aVar2.D = videoHeight;
                                                        a.this.c("onPlayEvent VOD_PLAY_EVT_RCV_FIRST_I_FRAME");
                                                        a.this.g.e();
                                                        if (!a.this.h) {
                                                            a.r(a.this);
                                                            a.this.g.d();
                                                            Bundle bundle4 = new Bundle();
                                                            bundle4.putInt(TXVodConstants.EVT_ID, 2008);
                                                            bundle4.putLong("EVT_TIME", TimeUtil.a());
                                                            bundle4.putLong("EVT_UTC_TIME", TimeUtil.b());
                                                            com.tencent.liteav.txcplayer.model.b mediaInfo = a.this.e.getMediaInfo();
                                                            if (mediaInfo != null && (str = mediaInfo.c) != null && str.toLowerCase().contains("hevc")) {
                                                                bundle4.putCharSequence("description", a.this.k ? "Enables hardware decoding H265" : "Enables software decoding h265");
                                                                i2 = 1;
                                                            } else {
                                                                bundle4.putCharSequence("description", a.this.k ? "Enables hardware decoding" : "Enables software decoding");
                                                                i2 = 0;
                                                            }
                                                            bundle4.putInt("EVT_PARAM1", a.this.k ? 1 : 2);
                                                            bundle4.putInt(TXVodConstants.EVT_CODEC_TYPE, i2);
                                                            if (!a.this.k) {
                                                                i3 = i2 != 0 ? 2 : 0;
                                                            } else if (i2 != 0) {
                                                                i3 = 3;
                                                            }
                                                            a.this.g.w = i3;
                                                            a(2008, bundle4);
                                                            bundle2.putInt("EVT_PARAM1", a.this.g.l);
                                                            break;
                                                        } else {
                                                            return;
                                                        }
                                                    case 2004:
                                                        a.this.c("onPlayEvent VOD_PLAY_EVT_PLAY_BEGIN");
                                                        if (a.this.M) {
                                                            a.this.g.d();
                                                        }
                                                        a.this.M = false;
                                                        a.this.g.r = false;
                                                        break;
                                                    case 2005:
                                                        com.tencent.liteav.txcvodplayer.a.a aVar3 = a.this.g;
                                                        int i4 = bundle.getInt("EVT_PLAY_DURATION", 0);
                                                        int i5 = bundle.getInt("EVT_PLAY_PROGRESS", 0);
                                                        aVar3.i = i4;
                                                        int i6 = i5 / 60;
                                                        if (i6 != aVar3.j) {
                                                            aVar3.j = i6;
                                                            if (!aVar3.f) {
                                                                aVar3.b();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                    case 2006:
                                                        a.this.g.c();
                                                        if (a.this.y) {
                                                            Bundle bundle5 = new Bundle();
                                                            bundle5.putString("EVT_MSG", "loop once playback complete");
                                                            a.this.a(6001, bundle5);
                                                            a.this.M = true;
                                                            a.this.g.r = true;
                                                            a.this.e.c(true);
                                                            a.this.g.a(true);
                                                            a.this.c("loop play");
                                                            return;
                                                        }
                                                        break;
                                                    case 2007:
                                                        com.tencent.liteav.txcvodplayer.a.a aVar4 = a.this.g;
                                                        if (!aVar4.p && aVar4.l != -1 && !aVar4.h && !aVar4.r) {
                                                            aVar4.e = System.currentTimeMillis();
                                                            aVar4.q = true;
                                                            aVar4.b("setLoadBegin mBeginLoadTS= " + aVar4.e);
                                                            break;
                                                        }
                                                        break;
                                                    case 2009:
                                                        if (a.this.A != null) {
                                                            d dVar = a.this.A;
                                                            dVar.a(h.a(dVar, a.this.e.getVideoWidth(), a.this.e.getVideoHeight()), "setVideoSize");
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                                                                a.this.c("onPlayEvent tcp connect success");
                                                                com.tencent.liteav.txcvodplayer.a.a aVar5 = a.this.g;
                                                                if (aVar5.x == 0) {
                                                                    aVar5.x = (int) (System.currentTimeMillis() - aVar5.b);
                                                                    aVar5.b("mTcpConnectTS = " + aVar5.x + ", mOriginBeginPlayTS = " + aVar5.b + ", " + System.currentTimeMillis());
                                                                    return;
                                                                }
                                                                return;
                                                            case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                                                                a.this.c("onPlayEvent first video packet");
                                                                if (!a.this.H) {
                                                                    com.tencent.liteav.txcvodplayer.a.a aVar6 = a.this.g;
                                                                    if (aVar6.z == 0) {
                                                                        aVar6.z = (int) (System.currentTimeMillis() - aVar6.c);
                                                                    }
                                                                    a.q(a.this);
                                                                    break;
                                                                }
                                                                break;
                                                            case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                                                                a.this.c("onPlayEvent dns resolved");
                                                                com.tencent.liteav.txcvodplayer.a.a aVar7 = a.this.g;
                                                                if (aVar7.y == 0) {
                                                                    aVar7.y = (int) (System.currentTimeMillis() - aVar7.b);
                                                                    return;
                                                                }
                                                                return;
                                                            case TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE /* 2019 */:
                                                            case TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE /* 2020 */:
                                                                break;
                                                            default:
                                                                if (i < 8000 || i > 8200) {
                                                                    a.this.c("onPlayEvent miss match event ".concat(String.valueOf(i)));
                                                                    return;
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                }
                            }
                        }
                        com.tencent.liteav.txcvodplayer.a.a aVar8 = a.this.g;
                        if (!aVar8.p && aVar8.l != -1 && !aVar8.h && !aVar8.r) {
                            aVar8.b("setLoadEnd mFirstFrame=" + aVar8.l + " , mIsLoading = " + aVar8.q + ",mBeginLoadTS = " + aVar8.e);
                            if (aVar8.q) {
                                int currentTimeMillis = (int) (System.currentTimeMillis() - aVar8.e);
                                aVar8.n += currentTimeMillis;
                                aVar8.m++;
                                if (aVar8.o < currentTimeMillis) {
                                    aVar8.o = currentTimeMillis;
                                }
                                aVar8.q = false;
                            }
                        }
                        if (aVar8.p) {
                            aVar8.p = false;
                        }
                        a.this.g.e();
                    } else {
                        a.this.c("onPlayEvent VOD_PLAY_EVT_VOD_PLAY_PREPARED");
                    }
                } else if (!a.this.h) {
                    a.n(a.this);
                    a aVar9 = a.this;
                    aVar9.a(aVar9.f);
                }
            }
            bundle2.putString("EVT_MSG", bundle.getString("description", ""));
            a.this.a(i, bundle2);
        }

        @Override // com.tencent.liteav.txcplayer.d
        public final void a(Bundle bundle) {
            Bundle bundle2 = new Bundle();
            int[] a2 = s.a();
            bundle2.putCharSequence("CPU_USAGE", a2[0] + "%");
            bundle2.putInt("VIDEO_FPS", (int) bundle.getFloat("fps"));
            bundle2.putInt("VIDEO_DPS", (int) bundle.getFloat("dps"));
            bundle2.putInt("NET_SPEED", ((int) bundle.getLong("tcpSpeed")) / 1000);
            bundle2.putInt("VIDEO_CACHE", ((int) bundle.getLong("cachedBytes")) / 1000);
            bundle2.putInt("VIDEO_WIDTH", a.this.e.getVideoWidth());
            bundle2.putInt("VIDEO_HEIGHT", a.this.e.getVideoHeight());
            bundle2.putString("SERVER_IP", a.this.e.getServerIp());
            bundle2.putInt("VIDEO_BITRATE", (int) bundle.getLong("VIDEO_BITRATE"));
            bundle2.putInt("AUDIO_BITRATE", (int) bundle.getLong("AUDIO_BITRATE"));
            com.tencent.liteav.txcvodplayer.a.a aVar = a.this.g;
            String serverIp = a.this.e.getServerIp();
            aVar.A = serverIp;
            if (serverIp == null) {
                aVar.A = "";
            }
            a.this.a(15001, bundle2);
        }
    };
    private ITXVCubePlayer.b V = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.a.4
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
        public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            Bitmap bitmap;
            if (a.this.Q == null) {
                a.this.Q = new com.tencent.liteav.txcvodplayer.renderer.c();
            }
            com.tencent.liteav.txcvodplayer.renderer.c cVar = a.this.Q;
            if (tPSubtitleFrameBuffer == null) {
                LiteavLog.i("SubtitleRender", "[renderToBitmap] subtitleFrameBuffer is null");
                bitmap = null;
            } else {
                LiteavLog.i("SubtitleRender", "[renderToBitmap] subtitleFrameBuffer, trackId: " + tPSubtitleFrameBuffer.trackID + " ,width: " + tPSubtitleFrameBuffer.getSrcWidth() + ", height: " + tPSubtitleFrameBuffer.getSrcHeight());
                Bitmap bitmap2 = cVar.f10349a;
                if (bitmap2 == null || bitmap2.getWidth() != tPSubtitleFrameBuffer.getSrcWidth() || cVar.f10349a.getHeight() != tPSubtitleFrameBuffer.getSrcHeight()) {
                    cVar.f10349a = Bitmap.createBitmap(tPSubtitleFrameBuffer.getSrcWidth(), tPSubtitleFrameBuffer.getSrcHeight(), Bitmap.Config.ARGB_8888);
                }
                cVar.f10349a.copyPixelsFromBuffer(ByteBuffer.wrap(tPSubtitleFrameBuffer.getData()[0]));
                bitmap = cVar.f10349a;
            }
            if (a.this.C != null) {
                a.this.C.show(bitmap);
            }
        }
    };

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class HandlerC0204a extends Handler {
        public HandlerC0204a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (a.this.R.get()) {
                a.this.b(a.this.S);
                sendMessageDelayed(new Message(), 30L);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private Class f10183a;
        private Class b;
        private Class c;
        private Field d;
        private Field e;
        private Field f;
        private Field g;
        private Field h;
        private Field i;
        private Field j;
        private Field k;
        private Field l;

        public b(Object obj) {
            try {
                this.f10183a = obj.getClass();
                this.b = Class.forName("com.tencent.trtc.TRTCCloudDef$TRTCTexture");
                this.c = Class.forName("com.tencent.trtc.TRTCCloudDef$TRTCVideoFrame");
                this.d = this.b.getDeclaredField("textureId");
                this.e = this.b.getDeclaredField("eglContext10");
                this.g = this.c.getDeclaredField("texture");
                this.h = this.c.getDeclaredField("width");
                this.i = this.c.getDeclaredField("height");
                this.j = this.c.getDeclaredField("pixelFormat");
                this.k = this.c.getDeclaredField("bufferType");
                this.l = this.c.getDeclaredField(CampaignEx.JSON_KEY_TIMESTAMP);
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 17) {
                    this.f = this.b.getDeclaredField("eglContext14");
                }
            } catch (Exception e) {
                LiteavLog.e("TXCVodPlayer", "init TRTCCloudClassInvokeWrapper error ", e);
            }
        }

        public final void a(Object obj, PixelFrame pixelFrame) {
            try {
                Object newInstance = this.b.newInstance();
                this.d.set(newInstance, Integer.valueOf(pixelFrame.getTextureId()));
                if (pixelFrame.getGLContext() instanceof EGLContext) {
                    this.e.set(newInstance, pixelFrame.getGLContext());
                } else {
                    this.f.set(newInstance, pixelFrame.getGLContext());
                }
                Object newInstance2 = this.c.newInstance();
                this.g.set(newInstance2, newInstance);
                this.h.set(newInstance2, Integer.valueOf(pixelFrame.getWidth()));
                this.i.set(newInstance2, Integer.valueOf(pixelFrame.getHeight()));
                this.j.set(newInstance2, 2);
                this.k.set(newInstance2, 3);
                this.l.set(newInstance2, 0);
                this.f10183a.getDeclaredMethod("sendCustomVideoData", Integer.TYPE, newInstance2.getClass()).invoke(obj, 2, newInstance2);
            } catch (Exception e) {
                LiteavLog.e("TXCVodPlayer", "sendCustomVideoData method error ", e);
            }
        }
    }

    static {
        SoLoader.loadAllLibraries();
    }

    public a(Context context) {
        this.F = null;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.F = applicationContext;
            ContextUtils.initApplicationContext(applicationContext);
            ContextUtils.setDataDirectorySuffix("liteav");
        }
        this.o = new HashMap();
        this.b = null;
        this.c = null;
        RenderProcessService.getInstance().checkInit(this.F);
        TXCVodVideoView tXCVodVideoView = new TXCVodVideoView(this.F);
        this.e = tXCVodVideoView;
        tXCVodVideoView.setListener(this.U);
        this.e.setTXCOnSubtitleFrameDataListener(this.V);
        this.G = new HashMap<>();
        c("[TXCVodVideoView:" + this.e.hashCode() + "], new TXCVodPlayer");
    }

    public static /* synthetic */ boolean n(a aVar) {
        aVar.k = false;
        return false;
    }

    public static /* synthetic */ boolean q(a aVar) {
        aVar.H = true;
        return true;
    }

    public static /* synthetic */ boolean r(a aVar) {
        aVar.h = true;
        return true;
    }

    public static /* synthetic */ boolean v(a aVar) {
        aVar.q = false;
        return false;
    }

    private void d(boolean z) {
        try {
            Object obj = this.B;
            if (obj != null) {
                obj.getClass().getDeclaredMethod("enableCustomVideoCapture", Integer.TYPE, Boolean.TYPE).invoke(obj, 2, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            e("setTRTCCustomVideoCapture error " + Log.getStackTraceString(e));
        }
    }

    private void h() {
        if (this.G.isEmpty() || this.g == null) {
            return;
        }
        for (Map.Entry<String, String> entry : this.G.entrySet()) {
            this.g.a(entry.getKey(), entry.getValue());
        }
        this.G.clear();
    }

    public final void e() {
        this.P = false;
        ITXVCubePlayer iTXVCubePlayer = this.e.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.unpublishAudioToNetwork();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void f() {
        this.l = null;
        this.e.setRenderSurface(null);
    }

    public final void g() {
        this.o.put("TXC_DRM_ENABLE", Boolean.FALSE);
    }

    public final void b(int i) {
        this.L = i;
        this.e.setVideoRotationDegree(i);
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(l.a(i));
        }
    }

    public final void c(int i) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        this.e.setBitrateIndex(i);
        this.p = i;
        if (i == -1 || !this.h || (aVar = this.g) == null) {
            return;
        }
        aVar.c(this.f.isSmoothSwitchBitrate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        LiteavLog.e("TXCVodPlayer", "[" + hashCode() + "], " + str);
    }

    public final void b(float f) {
        this.z = f;
        this.e.setStartTime(f);
    }

    public final void c() {
        this.O = false;
        d(false);
    }

    public final void d() {
        this.P = true;
        this.e.c();
    }

    public final void a(TXVodPlayConfig tXVodPlayConfig) {
        this.f = tXVodPlayConfig;
        if (tXVodPlayConfig == null) {
            this.f = new TXVodPlayConfig();
        }
        e eVar = new e();
        eVar.f10292a = this.f.getConnectRetryCount();
        eVar.b = this.f.getConnectRetryInterval();
        eVar.c = this.f.getTimeout();
        eVar.d = this.k;
        eVar.e = this.f.getCacheFolderPath();
        eVar.f = this.f.getMaxCacheItems();
        eVar.g = this.f.getPlayerType();
        eVar.h = this.f.getHeaders();
        eVar.i = this.f.isEnableAccurateSeek();
        eVar.j = this.f.isSmoothSwitchBitrate();
        eVar.k = this.f.getCacheMp4ExtName();
        eVar.l = this.f.getProgressInterval();
        eVar.m = this.f.getMaxBufferSize();
        eVar.n = this.f.getMaxPreloadSize();
        if (this.r == null && this.s == null) {
            eVar.x = this.f.getOverlayKey();
            eVar.y = this.f.getOverlayIv();
        } else {
            c.b bVar = this.s;
            if (bVar != null) {
                eVar.x = bVar.f10327a;
                eVar.y = bVar.b;
            } else {
                eVar.x = null;
                eVar.y = null;
            }
        }
        eVar.A = this.f.getExtInfoMap();
        eVar.C = this.f.isEnableRenderProcess();
        eVar.B = this.f.isAutoRotate();
        long j = this.J;
        if (j > 0) {
            eVar.v = j;
        } else {
            eVar.v = this.f.getPreferredResolution();
        }
        eVar.D = this.f.getMediaType();
        eVar.p = this.j;
        eVar.u = this.f.getEncryptedMp4Level();
        eVar.E = this.f.getPreferredAudioTrack();
        c("setConfig connectRetryCount:" + this.f.getConnectRetryCount() + " ,connectRetryInterval:" + this.f.getConnectRetryInterval() + " ,timeout:" + this.f.getTimeout() + " ,enableHardwareDecoder:" + this.k + " ,cacheFolderPath:" + this.f.getCacheFolderPath() + " ,maxCacheItems:" + this.f.getMaxCacheItems() + " ,enableAccurateSeek:" + this.f.isEnableAccurateSeek() + " ,autoRotate:" + this.f.isAutoRotate() + " ,isSmoothSwitchBitrate:" + this.f.isSmoothSwitchBitrate() + " ,progressInterval:" + this.f.getProgressInterval() + " ,maxBufferSize:" + this.f.getMaxBufferSize() + " ,maxPreloadSize:" + this.f.getMaxPreloadSize() + " ,overlayKey:" + this.f.getOverlayKey() + " ,getOverlayIv:" + this.f.getOverlayIv() + " ,enableRenderProcess:" + this.f.isEnableRenderProcess() + " ,preferredResolution:" + this.f.getPreferredResolution() + " mediaType:" + this.f.getMediaType() + " ,preferredAudioTrack:" + this.f.getPreferredAudioTrack() + " ,encryptedMp4Level:" + this.f.getEncryptedMp4Level() + " ,header:" + this.f.getHeaders() + " ,extInfoMap:" + this.f.getExtInfoMap());
        this.e.setConfig(eVar);
    }

    private String d(String str) {
        String str2;
        String str3;
        boolean z;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String[] split;
        String str11;
        int i;
        String str12 = str;
        String trim = str12.trim();
        String str13 = "";
        if (str12.contains("&oversign=")) {
            if (str12.contains("&oversign=")) {
                int indexOf = str12.indexOf("&oversign=");
                int lastIndexOf = str12.lastIndexOf("&oversign=");
                String substring = str12.substring(indexOf + 1, lastIndexOf);
                if (TextUtils.isEmpty(substring) || (split = substring.split("&")) == null || split.length <= 0) {
                    str2 = "";
                } else {
                    String str14 = "";
                    String str15 = str14;
                    String str16 = str15;
                    String str17 = str16;
                    String str18 = str17;
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    long j = 0;
                    while (i3 < split.length) {
                        int indexOf2 = split[i3].indexOf("=");
                        String[] strArr = split;
                        if (indexOf2 >= 0) {
                            str11 = str13;
                            String substring2 = strArr[i3].substring(0, indexOf2);
                            String str19 = strArr[i3];
                            i = i3;
                            String substring3 = str19.substring(indexOf2 + 1, str19.length());
                            if (!TextUtils.isEmpty(substring2) && !TextUtils.isEmpty(substring3)) {
                                if (substring2.equals("oversign")) {
                                    i4 = Integer.valueOf(substring3).intValue();
                                } else if (substring2.equals("o1")) {
                                    str17 = substring3;
                                } else if (substring2.equals("o2")) {
                                    str14 = substring3;
                                } else if (substring2.equals("o3")) {
                                    i2 = Integer.valueOf(substring3).intValue();
                                } else if (substring2.equals("o4")) {
                                    str15 = substring3;
                                } else if (substring2.equals("o5")) {
                                    str16 = substring3;
                                } else if (substring2.equals("o6")) {
                                    j = Long.valueOf(substring3).longValue();
                                } else if (substring2.equals("o7")) {
                                    str18 = substring3;
                                }
                            }
                        } else {
                            str11 = str13;
                            i = i3;
                        }
                        i3 = i + 1;
                        split = strArr;
                        str13 = str11;
                    }
                    str2 = str13;
                    if (!TextUtils.isEmpty(str15) && !TextUtils.isEmpty(str16)) {
                        String a2 = TXCHLSEncoder.a(i4, str17, str14, i2);
                        c.b bVar = new c.b();
                        bVar.f10327a = TXCHLSEncoder.b(a2, str15);
                        bVar.b = TXCHLSEncoder.b(a2, str16);
                        this.s = bVar;
                    }
                    long j2 = j;
                    if (j2 > 0) {
                        this.J = j2;
                    }
                    if (!TextUtils.isEmpty(str18)) {
                        this.o.put("TXC_DRM_KEY_URL", str18);
                        this.o.put("TXC_DRM_PROVISION_URL", new TXPlayerDrmBuilder().getDeviceCertificateUrl());
                        this.o.put("TXC_DRM_ENABLE", Boolean.TRUE);
                    }
                }
                if (indexOf > 0 && indexOf < lastIndexOf) {
                    str12 = str12.substring(0, indexOf) + str12.substring(lastIndexOf + 10);
                }
            } else {
                str2 = "";
            }
            trim = str12;
        } else {
            str2 = "";
        }
        if (trim.startsWith("http")) {
            trim = com.tencent.liteav.txcplayer.a.a.c(trim);
        }
        String trim2 = trim.trim();
        String str20 = this.n;
        if (str20 != null) {
            trim2 = com.tencent.liteav.txcplayer.a.a.a(trim2, str20);
        }
        Uri parse = Uri.parse(trim2);
        String query = parse.getQuery();
        if (query == null || query.isEmpty()) {
            str3 = trim2;
            z = false;
            str4 = str2;
        } else {
            String[] split2 = query.split("&");
            if (split2.length > 0) {
                int length = split2.length;
                str8 = str2;
                str9 = str8;
                str10 = str9;
                int i5 = 0;
                int i6 = 0;
                while (i5 < length) {
                    String str21 = split2[i5];
                    String[] split3 = str21.split("=");
                    String str22 = trim2;
                    if (split3.length == 2) {
                        if ("spfileid".equalsIgnoreCase(split3[0])) {
                            i6++;
                            str2 = split3[1];
                        } else if ("spdrmtype".equalsIgnoreCase(split3[0])) {
                            i6++;
                            str9 = split3[1];
                        } else if ("spappid".equalsIgnoreCase(split3[0])) {
                            i6++;
                            str10 = split3[1];
                        } else {
                            if (!str8.isEmpty()) {
                                str8 = str8 + "&";
                            }
                            str8 = str8 + str21;
                        }
                    } else {
                        e("fieldIds.length != 2");
                    }
                    i5++;
                    trim2 = str22;
                }
                str3 = trim2;
                if (i6 == 3) {
                    z = true;
                    str6 = "1";
                } else {
                    str6 = "0";
                    z = false;
                }
                str7 = str2;
            } else {
                str3 = trim2;
                str6 = "0";
                z = false;
                str7 = str2;
                str8 = str7;
                str9 = str8;
                str10 = str9;
            }
            if (z) {
                c("parsePlayUrl spfileid, " + str7 + ", spdrmtype= " + str9 + ", spappid=" + str10);
                com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
                aVar.u = str7;
                aVar.B = str9;
                aVar.a(str10);
                this.g.t = str6;
            }
            str4 = str8;
        }
        if (z) {
            str5 = parse.buildUpon().clearQuery().build().toString();
            if (!str4.isEmpty()) {
                str5 = Uri.decode(parse.buildUpon().clearQuery().query(str4).build().toString());
            }
        } else {
            str5 = str3;
        }
        c("parsePlayUrl url: ".concat(String.valueOf(str5)));
        return str5;
    }

    public final void b(boolean z) {
        this.x = z;
        TextureView textureViewSetByUser = TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(this.f10175a);
        if (textureViewSetByUser != null) {
            if (this.f.isAutoRotate() && (this.e.getMetaRotationDegree() == 90 || this.e.getMetaRotationDegree() == 270)) {
                textureViewSetByUser.setScaleY(z ? -1.0f : 1.0f);
            } else {
                textureViewSetByUser.setScaleX(z ? -1.0f : 1.0f);
            }
        }
        com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public final void c(boolean z) {
        if (this.B == null || !this.O) {
            return;
        }
        if (this.T == null) {
            HandlerThread handlerThread = new HandlerThread("refreshLoopHandlerThread");
            handlerThread.start();
            this.T = new HandlerC0204a(handlerThread.getLooper());
        }
        if (z) {
            this.R.set(true);
            c("enable video refresh loop");
            Message message = new Message();
            HandlerC0204a handlerC0204a = this.T;
            if (handlerC0204a != null) {
                handlerC0204a.sendMessage(message);
                return;
            }
            return;
        }
        this.R.set(false);
        c("disable video refresh loop");
    }

    public final void b() {
        this.O = true;
        d(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(PixelFrame pixelFrame) {
        Object obj;
        Object obj2;
        try {
            if (this.O) {
                if (this.N == null && (obj2 = this.B) != null) {
                    this.N = new b(obj2);
                }
                b bVar = this.N;
                if (bVar == null || (obj = this.B) == null || pixelFrame == null) {
                    return;
                }
                bVar.a(obj, pixelFrame);
            }
        } catch (Exception e) {
            e("sendCustomVideoData method error " + Log.getStackTraceString(e));
        }
    }

    public final void c(String str) {
        LiteavLog.i("TXCVodPlayer", "[" + hashCode() + "], " + str);
    }

    public static String b(String str) {
        return TXCHLSEncoder.a(str);
    }

    private void a(Map<String, Object> map) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (TXVodConstants.VOD_KEY_CUSTOM_DATA.equals(entry.getKey()) && (value instanceof HashMap)) {
                Map map2 = (Map) value;
                for (Object obj : map2.keySet()) {
                    Object obj2 = map2.get(obj);
                    if ((obj instanceof String) && (obj2 instanceof String)) {
                        String str = (String) obj;
                        if (!TextUtils.isEmpty(str)) {
                            String str2 = (String) obj2;
                            if (!TextUtils.isEmpty(str2) && (aVar = this.g) != null) {
                                aVar.a(str, str2);
                            }
                        }
                    }
                }
            }
        }
    }

    public final int a(String str) {
        LicenseChecker.d a2;
        c.b bVar;
        TXVodPlayConfig tXVodPlayConfig;
        if (str != null && !TextUtils.isEmpty(str)) {
            int i = this.p;
            a(false);
            this.p = i;
            this.g = new com.tencent.liteav.txcvodplayer.a.a(this.F);
            c("[TXCVodPlayCollection:" + this.g.hashCode() + "], new TXCVodPlayCollection");
            String d = d(str);
            com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
            aVar.b("setUrl: ".concat(String.valueOf(d)));
            aVar.f10314a = d;
            this.g.a(this.j);
            VodPlayerControl.nativeIncrementCheckCount();
            LicenseChecker.d dVar = LicenseChecker.d.OK;
            if (com.tencent.liteav.txcplayer.common.c.a() != LicenseChecker.d.OK) {
                String str2 = "(-5," + a2.value + ")";
                e("startPlay error, licence check failed" + str2 + "! click the link to apply trial licence: " + E + " .Official licence requires payment.");
                Bundle bundle = new Bundle();
                bundle.putString("EVT_MSG", "VOD_PLAY_ERR_INVALID_LICENCE".concat(String.valueOf(str2)));
                a(-5, bundle);
                new Event4XReporter(49999, 1004, "", true, 1).reportDau(1997, 0, "");
                this.g.a();
                return -5;
            }
            this.t = str;
            this.p = this.p;
            TXCloudVideoView tXCloudVideoView = this.f10175a;
            if (tXCloudVideoView != null) {
                tXCloudVideoView.clearLog();
                this.f10175a.setVisibility(0);
                if (TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(this.f10175a) == null) {
                    TextureRenderView textureRenderView = new TextureRenderView(this.f10175a.getContext());
                    this.f10175a.addVideoView(textureRenderView);
                    this.e.setTextureRenderView(textureRenderView);
                }
                a(this.f10175a, 0);
            } else {
                Surface surface = this.l;
                if (surface != null) {
                    this.e.setRenderSurface(surface);
                }
            }
            d dVar2 = this.A;
            if (dVar2 != null) {
                dVar2.a(com.tencent.liteav.txcvodplayer.renderer.e.a(dVar2), "Start");
            }
            if (TextUtils.isEmpty(com.tencent.liteav.txcplayer.common.b.a()) && (tXVodPlayConfig = this.f) != null) {
                com.tencent.liteav.txcplayer.common.b.a(tXVodPlayConfig.getCacheFolderPath());
            }
            TXVodPlayConfig tXVodPlayConfig2 = this.f;
            if (tXVodPlayConfig2 != null) {
                a(tXVodPlayConfig2.getExtInfoMap());
            }
            a(this.f);
            this.e.setPrivateConfig(this.o);
            this.h = false;
            this.H = false;
            this.e.setStartTime(this.z);
            this.e.d(this.i);
            c(this.p);
            this.e.setVideoPath(d);
            this.e.setAutoPlay(this.j);
            this.e.setMute(this.u);
            int i2 = this.v;
            if (i2 >= 0) {
                this.e.setAudioPlayoutVolume(i2);
            }
            this.e.setAutoMaxBitrate(this.D);
            a(this.I);
            b(this.L);
            a(this.K);
            b(this.x);
            this.e.c(false);
            this.g.s = this.e.getPlayerType();
            if (this.O) {
                b();
            }
            if (this.P) {
                d();
            }
            c(" startPlay url=" + d + " sdkVersion=" + CommonUtil.getSDKVersionStr());
            if (this.r != null && (bVar = this.s) != null && !TextUtils.isEmpty(bVar.f10327a)) {
                com.tencent.liteav.txcvodplayer.c.a.a().a(this.r.getAppId(), this.r.getFileId(), this.s, d);
            }
            try {
                Class.forName(new String(Base64.decode("Y29tLnRlbmNlbnQucWNsb3VkLnR1aXBsYXllci5jb3JlLlRVSVBsYXllckNvcmU=", 0)));
                a("use_tuishort_com", "1");
            } catch (Exception unused) {
            }
            String a3 = com.tencent.liteav.txcplayer.a.a.a(this.t);
            if (!TextUtils.isEmpty(a3) && a3.toLowerCase().endsWith("mpd")) {
                a("use_dash", "1");
            }
            h();
            Event4XReporter event4XReporter = new Event4XReporter(49999, 1004, "", true, 1);
            event4XReporter.reportDau(1997, 0, "");
            com.tencent.liteav.txcvodplayer.a.a aVar2 = this.g;
            aVar2.v = this.j ? "autoPlay=1" : "autoPlay=0";
            aVar2.a();
            try {
                Class.forName("com.tencent.liteav.demo.play.SuperPlayerView");
                event4XReporter.reportDau(1556, 0, "");
            } catch (Exception unused2) {
            }
            return 0;
        }
        c("startPlay playUrl is empty");
        return -1;
    }

    public static void a(TXCloudVideoView tXCloudVideoView, int i) {
        if (tXCloudVideoView == null) {
            return;
        }
        tXCloudVideoView.setVisibility(i);
        TextureView textureViewSetByUser = TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(tXCloudVideoView);
        if (textureViewSetByUser == null) {
            return;
        }
        textureViewSetByUser.setVisibility(i);
    }

    public final int a(boolean z) {
        this.m = true;
        this.e.a();
        this.R.set(false);
        HandlerC0204a handlerC0204a = this.T;
        if (handlerC0204a != null) {
            handlerC0204a.removeCallbacksAndMessages(null);
            this.T.getLooper().quitSafely();
            this.T = null;
        }
        this.J = -1L;
        com.tencent.liteav.txcvodplayer.b.d dVar = this.w;
        if (dVar != null) {
            dVar.a(null);
            this.w = null;
        }
        d dVar2 = this.A;
        if (dVar2 != null) {
            dVar2.a(true);
        }
        TXCloudVideoView tXCloudVideoView = this.f10175a;
        if (tXCloudVideoView != null && TXCCloudVideoViewMethodInvoker.getTextureViewSetByUser(tXCloudVideoView) != null && z) {
            a(this.f10175a, 8);
            this.f10175a.removeVideoView();
        }
        com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
        if (aVar != null) {
            aVar.c();
        }
        this.p = -1000;
        com.tencent.liteav.txcvodplayer.renderer.c cVar = this.Q;
        if (cVar != null) {
            cVar.a();
            this.Q = null;
        }
        TXSubtitleView tXSubtitleView = this.C;
        if (tXSubtitleView != null) {
            tXSubtitleView.show(null);
        }
        return 0;
    }

    public final void a(float f, boolean z) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        this.e.a((int) (f * 1000.0f), z);
        if (!this.h || (aVar = this.g) == null) {
            return;
        }
        aVar.f();
    }

    public final void a(int i) {
        this.K = i;
        if (i == 1) {
            this.e.setRenderMode(0);
        } else {
            this.e.setRenderMode(1);
        }
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(GLConstants.GLScaleType.a(i));
        }
    }

    public final List<TXTrackInfo> a() {
        TPTrackInfo[] trackInfo = this.e.getTrackInfo();
        if (trackInfo != null && trackInfo.length != 0) {
            ArrayList arrayList = new ArrayList();
            a(arrayList, trackInfo);
            return arrayList;
        }
        return new ArrayList(0);
    }

    public static List<TXTrackInfo> a(List<TXTrackInfo> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (TXTrackInfo tXTrackInfo : list) {
            if (tXTrackInfo.getTrackType() == i) {
                arrayList.add(tXTrackInfo);
            }
        }
        return arrayList;
    }

    private static void a(List<TXTrackInfo> list, TPTrackInfo[] tPTrackInfoArr) {
        for (int i = 0; i < tPTrackInfoArr.length; i++) {
            TPTrackInfo tPTrackInfo = tPTrackInfoArr[i];
            TXTrackInfo tXTrackInfo = new TXTrackInfo();
            tXTrackInfo.trackIndex = i;
            tXTrackInfo.trackType = tPTrackInfo.trackType;
            tXTrackInfo.name = tPTrackInfo.name;
            tXTrackInfo.isSelected = tPTrackInfo.isSelected;
            tXTrackInfo.isExclusive = tPTrackInfo.isExclusive;
            tXTrackInfo.isInternal = tPTrackInfo.isInternal;
            list.add(tXTrackInfo);
        }
    }

    public static TXVodDef.TXVodSubtitleData a(TPSubtitleData tPSubtitleData) {
        TXVodDef.TXVodSubtitleData tXVodSubtitleData = new TXVodDef.TXVodSubtitleData();
        tXVodSubtitleData.subtitleData = tPSubtitleData.subtitleData;
        tXVodSubtitleData.durationMs = tPSubtitleData.durationMs;
        tXVodSubtitleData.startPositionMs = tPSubtitleData.startPositionMs;
        tXVodSubtitleData.trackIndex = tPSubtitleData.trackIndex;
        return tXVodSubtitleData;
    }

    public final void a(float f) {
        this.I = f;
        this.e.setRate(f);
        com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
        if (aVar != null) {
            aVar.a(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Bundle bundle) {
        TXVodPlayer tXVodPlayer;
        TXVodPlayer tXVodPlayer2;
        if (i == 15001) {
            ITXLivePlayListener iTXLivePlayListener = this.b;
            if (iTXLivePlayListener != null) {
                iTXLivePlayListener.onNetStatus(bundle);
            }
            ITXVodPlayListener iTXVodPlayListener = this.c;
            if (iTXVodPlayListener == null || (tXVodPlayer2 = this.d) == null) {
                return;
            }
            iTXVodPlayListener.onNetStatus(tXVodPlayer2, bundle);
            return;
        }
        ITXLivePlayListener iTXLivePlayListener2 = this.b;
        if (iTXLivePlayListener2 != null) {
            iTXLivePlayListener2.onPlayEvent(i, bundle);
        }
        ITXVodPlayListener iTXVodPlayListener2 = this.c;
        if (iTXVodPlayListener2 == null || (tXVodPlayer = this.d) == null) {
            return;
        }
        iTXVodPlayListener2.onPlayEvent(tXVodPlayer, i, bundle);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        this.l = surface;
        this.e.setRenderSurface(surface);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void a(PixelFrame pixelFrame) {
        if (this.O) {
            this.S = pixelFrame;
            b(pixelFrame);
        }
    }

    public final int a(String str, String str2, String str3, String str4, c.b bVar) {
        this.o.put("TXC_DRM_KEY_URL", str2);
        this.o.put("TXC_DRM_PROVISION_URL", str3);
        this.o.put("TXC_DRM_SIMPLE_AES_URL", str4);
        this.o.put("TXC_DRM_ENABLE", Boolean.TRUE);
        this.s = bVar;
        a("use_drm", "1");
        return a(str);
    }

    public final void a(String str, String str2) {
        com.tencent.liteav.txcvodplayer.a.a aVar = this.g;
        if (aVar == null) {
            this.G.put(str, str2);
        } else {
            aVar.a(str, str2);
        }
    }
}
