package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import androidx.webkit.ProxyConfig;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.common.c;
import com.tencent.liteav.txcplayer.d;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.liteav.txcvodplayer.renderer.SurfaceRenderView;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.a;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXCVodVideoView extends FrameLayout {
    private static volatile boolean ae = true;
    private static volatile boolean af = false;
    public static volatile boolean i = false;
    public static volatile boolean j = false;
    private int A;
    private long B;
    private long C;
    private int D;
    private boolean E;
    private Context F;
    private Map<String, Object> G;
    private com.tencent.liteav.txcvodplayer.renderer.a H;
    private int I;
    private int J;
    private String K;
    private float L;
    private long M;
    private long N;
    private volatile boolean O;
    private int P;
    private int Q;
    private float R;
    private boolean S;
    private int T;
    private int U;
    private int V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    public int f10298a;
    private boolean aa;
    private ITXVCubePlayer.b ab;
    private TXSubtitleRenderModel ac;
    private ITXVCubePlayer.i ad;
    private String ag;
    private int ah;
    private CopyOnWriteArrayList<TPTrackInfo> ai;
    private ITXVCubePlayer.d aj;
    private ITXVCubePlayer.f ak;
    private int al;
    private ITXVCubePlayer.e am;
    private ITXVCubePlayer.h an;
    private ITXVCubePlayer.i ao;
    private ITXVCubePlayer.b ap;
    private int aq;
    private d ar;
    private boolean as;
    public int b;
    public ITXVCubePlayer c;
    public e d;
    protected boolean e;
    protected final int f;
    public Object g;
    public List<b> h;
    public boolean k;
    public String l;
    public int m;
    public int n;
    public Map<String, Object> o;
    ITXVCubePlayer.j p;
    ITXVCubePlayer.g q;
    RenderProcessService.IRenderServiceEventListener r;
    a.InterfaceC0211a s;
    public Handler t;
    private a.b u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TXCVodVideoView> f10312a;
        private final int b;

        public a(TXCVodVideoView tXCVodVideoView, Looper looper) {
            super(looper);
            this.b = 500;
            this.f10312a = new WeakReference<>(tXCVodVideoView);
        }

        private void a(TXCVodVideoView tXCVodVideoView, boolean z) {
            if (tXCVodVideoView != null && tXCVodVideoView.ar != null) {
                long currentPosition = tXCVodVideoView.getCurrentPosition();
                Bundle bundle = new Bundle();
                long bufferDuration = tXCVodVideoView.getBufferDuration();
                long duration = tXCVodVideoView.getDuration();
                if (z) {
                    currentPosition = duration;
                }
                bundle.putInt("EVT_PLAY_PROGRESS", (int) (currentPosition / 1000));
                bundle.putInt("EVT_PLAY_DURATION", (int) (duration / 1000));
                bundle.putInt(TXVodConstants.EVT_PLAYABLE_DURATION, (int) (bufferDuration / 1000));
                bundle.putInt("EVT_PLAY_PROGRESS_MS", (int) currentPosition);
                bundle.putInt("EVT_PLAY_DURATION_MS", (int) duration);
                bundle.putInt("EVT_PLAYABLE_DURATION_MS", (int) bufferDuration);
                if (TXCVodVideoView.i && tXCVodVideoView.c != null) {
                    bundle.putLong(TXVodConstants.EVT_PLAY_PDT_TIME_MS, tXCVodVideoView.c.getPdtTimeMs(currentPosition));
                }
                if (tXCVodVideoView.c != null) {
                    bundle.putFloat("EVT_PLAYABLE_RATE", tXCVodVideoView.c.getRate());
                }
                if (tXCVodVideoView.c != null) {
                    if (tXCVodVideoView.d.l <= 0) {
                        tXCVodVideoView.d.l = 500;
                    }
                    removeMessages(103);
                    if (!z) {
                        sendEmptyMessageDelayed(103, tXCVodVideoView.d.l);
                    }
                }
                tXCVodVideoView.ar.a(2005, bundle);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            float f;
            TXCVodVideoView tXCVodVideoView = this.f10312a.get();
            if (tXCVodVideoView != null && tXCVodVideoView.ar != null) {
                switch (message.what) {
                    case 100:
                        if (tXCVodVideoView.c != null) {
                            try {
                                float propertyLong = (float) tXCVodVideoView.c.getPropertyLong(206);
                                long currentPosition = tXCVodVideoView.c.getCurrentPosition();
                                long propertyLong2 = tXCVodVideoView.c.getPropertyLong(208);
                                if (currentPosition > 0) {
                                    f = (float) ((propertyLong2 * 1000) / currentPosition);
                                } else {
                                    f = 0.0f;
                                }
                                long propertyLong3 = tXCVodVideoView.c.getPropertyLong(302);
                                long propertyLong4 = tXCVodVideoView.c.getPropertyLong(301);
                                long propertyLong5 = tXCVodVideoView.c.getPropertyLong(303);
                                Bundle bundle = new Bundle();
                                long propertyLong6 = tXCVodVideoView.c.getPropertyLong(202);
                                long propertyLong7 = tXCVodVideoView.c.getPropertyLong(101);
                                bundle.putLong("VIDEO_BITRATE", propertyLong6);
                                bundle.putLong("AUDIO_BITRATE", propertyLong7);
                                bundle.putFloat("fps", propertyLong);
                                bundle.putFloat("dps", f);
                                bundle.putLong("cachedBytes", propertyLong3);
                                bundle.putLong("bitRate", propertyLong4);
                                bundle.putLong("tcpSpeed", propertyLong5);
                                tXCVodVideoView.ar.a(bundle);
                                removeMessages(100);
                                sendEmptyMessageDelayed(100, 500L);
                                return;
                            } catch (Exception e) {
                                LiteavLog.e("TXCVodVideoView", "MSG_UPDATE_NET_STATUS exception : " + e.getMessage());
                                return;
                            }
                        }
                        return;
                    case 101:
                        int i = message.arg1;
                        if (i != 2003) {
                            if (i != 2006) {
                                if (i == 2019 && tXCVodVideoView.b == 3 && tXCVodVideoView.f10298a != 3) {
                                    tXCVodVideoView.a(2004, 0, "Playback started");
                                    tXCVodVideoView.f10298a = 3;
                                    sendEmptyMessage(100);
                                    sendEmptyMessage(103);
                                }
                            } else {
                                a(tXCVodVideoView, true);
                            }
                        } else {
                            TXCVodVideoView.A(tXCVodVideoView);
                        }
                        tXCVodVideoView.ar.a(i, message.getData());
                        RenderProcessService.getInstance().sendPlayerEventToPlugin(tXCVodVideoView.c, i, message.getData());
                        return;
                    case 102:
                        tXCVodVideoView.e(true);
                        tXCVodVideoView.a(2103, 0, "VOD network reconnected");
                        return;
                    case 103:
                        a(tXCVodVideoView, false);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f10313a;
        public String b;
        public String c;

        public b(String str, String str2, String str3) {
            this.f10313a = str;
            this.b = str2;
            this.c = str3;
        }
    }

    public TXCVodVideoView(Context context) {
        super(context);
        this.f10298a = 0;
        this.b = 0;
        this.u = null;
        this.c = null;
        this.E = false;
        this.L = 1.0f;
        this.e = true;
        this.f = 2;
        this.O = false;
        this.P = -1;
        this.Q = 100;
        this.R = -100.0f;
        this.S = false;
        this.T = -1000;
        this.U = -1;
        this.V = -1000;
        this.W = -1;
        this.g = null;
        this.k = false;
        this.m = 0;
        this.n = -1;
        this.o = null;
        this.ah = -1;
        this.p = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i2, int i3, String str) {
                boolean z;
                int i4 = 0;
                if ((TXCVodVideoView.this.w != i3 && Math.abs(TXCVodVideoView.this.w - i3) > 16) || (TXCVodVideoView.this.v != i2 && Math.abs(TXCVodVideoView.this.v - i2) > 16)) {
                    z = true;
                } else {
                    z = false;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.I = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.J = iTXVCubePlayer.getVideoSarDen();
                ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = TXCVodVideoView.this.getSupportedBitrates();
                if (supportedBitrates != null) {
                    int size = supportedBitrates.size();
                    long j2 = 2147483647L;
                    while (i4 < size) {
                        com.tencent.liteav.txcplayer.model.a aVar = supportedBitrates.get(i4);
                        i4++;
                        com.tencent.liteav.txcplayer.model.a aVar2 = aVar;
                        long abs = Math.abs((TXCVodVideoView.this.v * TXCVodVideoView.this.w) - (aVar2.b * aVar2.c));
                        if (abs < j2) {
                            TXCVodVideoView.this.M = aVar2.b * aVar2.c;
                            j2 = abs;
                        }
                    }
                }
                long propertyLong = TXCVodVideoView.this.c.getPropertyLong(205);
                TXCVodVideoView.this.a("OnVideoSizeChangedListener width:" + TXCVodVideoView.this.v + ":height:" + TXCVodVideoView.this.w + ":SarNum:" + TXCVodVideoView.this.I + ":SarDen:" + TXCVodVideoView.this.J + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0) {
                    if (TXCVodVideoView.this.H != null) {
                        TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                        TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (z) {
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    if (!TXCVodVideoView.this.E && str != null) {
                        String str2 = i2 + "," + i3 + "," + str;
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                        bundle.putString("EVT_PARAM3", str2);
                    } else {
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w);
                    }
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message);
                    }
                } else if (!TXCVodVideoView.this.E && str != null) {
                    Message message2 = new Message();
                    message2.what = 101;
                    message2.arg1 = 2009;
                    Bundle bundle2 = new Bundle();
                    String str3 = i2 + "," + i3 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    bundle2.putString("EVT_PARAM3", str3);
                    bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message2.setData(bundle2);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message2);
                    }
                }
            }
        };
        this.q = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    TXCVodVideoView.this.a("setSurfaceBufferSize succeed");
                }
                if (c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                    TXCVodVideoView.d();
                    TXCVodVideoView.this.a("has advanced license!");
                }
                if (!TXCVodVideoView.i) {
                    TXCVodVideoView.this.c.checkSubtitle();
                }
                TXCVodVideoView.j(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == 1) {
                    TXCVodVideoView.this.a(2013, 0, "VOD ready(EVT_VOD_PLAY_PREPARED)");
                    if (!TXCVodVideoView.this.d.p) {
                        TXCVodVideoView.this.b = 4;
                    } else if (TXCVodVideoView.this.b != 4) {
                        TXCVodVideoView.this.b = 3;
                    }
                    TXCVodVideoView.this.f10298a = 2;
                }
                TXCVodVideoView.m(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == -1) {
                    TXCVodVideoView.this.f10298a = 3;
                    TXCVodVideoView.this.b = 3;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0 && TXCVodVideoView.this.H != null) {
                    TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                    TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                }
                if (TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }
        };
        this.aj = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f10298a = 5;
                TXCVodVideoView.this.b = 5;
                TXCVodVideoView.this.a(2006, 0, "Playback completed");
            }
        };
        this.ak = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final boolean a(int i2, int i3, int i4, Object obj) {
                long j2;
                if (i2 != 1006) {
                    if (i2 != 2007) {
                        if (i2 == 2011) {
                            TXCVodVideoView.this.a("EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i3)));
                            TXCVodVideoView.this.A = i3;
                            if (TXCVodVideoView.this.d.B && TXCVodVideoView.this.A > 0) {
                                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                                tXCVodVideoView.z = tXCVodVideoView.A;
                                if (TXCVodVideoView.this.H != null) {
                                    TXCVodVideoView.this.H.setVideoRotation(TXCVodVideoView.this.z);
                                }
                            }
                            int unused = TXCVodVideoView.this.A;
                            TXCVodVideoView.this.a(2011, 0, "Video angle " + TXCVodVideoView.this.A);
                            return true;
                        } else if (i2 != 2014) {
                            if (i2 != 2020) {
                                if (i2 != 2026) {
                                    TPPlayerMsg.TPVideoSeiInfo tPVideoSeiInfo = null;
                                    r0 = null;
                                    String str = null;
                                    tPVideoSeiInfo = null;
                                    if (i2 != 2030) {
                                        if (i2 != 2002) {
                                            if (i2 == 2003) {
                                                TXCVodVideoView.this.a("EVT_RENDER_FIRST_I_FRAME");
                                                if (!TXCVodVideoView.this.k) {
                                                    TXCVodVideoView.this.a(i2, 0, "VOD displayed the first frame");
                                                } else {
                                                    Bundle bundle = new Bundle();
                                                    if (!TextUtils.isEmpty(TXCVodVideoView.this.l) && TXCVodVideoView.this.l.equals(TXCVodVideoView.this.d.q)) {
                                                        bundle.putString("support_hevc", "0");
                                                    } else {
                                                        bundle.putString("support_hevc", "1");
                                                    }
                                                    TXCVodVideoView.this.a(i2, 0, "VOD displayed the first frame", bundle);
                                                }
                                                TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                                tXCVodVideoView2.setRate(tXCVodVideoView2.L);
                                                TXCVodVideoView.q(TXCVodVideoView.this);
                                                return true;
                                            }
                                            switch (i2) {
                                                case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        TXCVodVideoView.this.K = (String) obj;
                                                    }
                                                    String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.K + ",port:" + i3 + ",error:" + i4;
                                                    TXCVodVideoView.this.a(str2);
                                                    if (i4 == 0) {
                                                        TXCVodVideoView.this.a(i2, 0, str2);
                                                        return true;
                                                    }
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                                                    TXCVodVideoView.this.a(i2, 0, "Video data received");
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        str = (String) obj;
                                                    }
                                                    String str3 = "dns resolved url:" + str + ",error:" + i3;
                                                    TXCVodVideoView.this.a(str3);
                                                    if (i3 == 0) {
                                                        TXCVodVideoView.this.a(i2, 0, str3);
                                                        return true;
                                                    }
                                                    return true;
                                                default:
                                                    return true;
                                            }
                                        }
                                        TXCVodVideoView.this.a(i2, 0, "hit cache");
                                        return true;
                                    } else if (!TXCVodVideoView.i) {
                                        return false;
                                    } else {
                                        if (obj != null && (obj instanceof TPPlayerMsg.TPVideoSeiInfo)) {
                                            tPVideoSeiInfo = (TPPlayerMsg.TPVideoSeiInfo) obj;
                                        }
                                        if (tPVideoSeiInfo == null) {
                                            TXCVodVideoView.this.b("VOD_PLAY_EVT_VIDEO_SEI, seiInfo is null");
                                            return false;
                                        }
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_TYPE, tPVideoSeiInfo.videoSeiType);
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_SIZE, tPVideoSeiInfo.seiDataSize);
                                        bundle2.putByteArray(TXVodConstants.EVT_KEY_SEI_DATA, tPVideoSeiInfo.seiData);
                                        TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_VIDEO_SEI, bundle2);
                                        return true;
                                    }
                                }
                                TXCVodVideoView.this.a(i2, 0, "Audio first play");
                                return true;
                            }
                            if (obj != null && (obj instanceof Long)) {
                                j2 = ((Long) obj).longValue();
                            } else {
                                j2 = -1;
                            }
                            int i5 = (int) j2;
                            TXCVodVideoView.a(TXCVodVideoView.this, i5, i4);
                            TXCVodVideoView.b(TXCVodVideoView.this, i5, i4);
                            return true;
                        } else {
                            TXCVodVideoView.this.a(i2, 0, "Buffer ended");
                            if (i3 != 0) {
                                String str4 = TXCVodVideoView.this.d.q;
                                if (TextUtils.isEmpty(str4) && str4.endsWith("m3u8")) {
                                    return true;
                                }
                            }
                            if (TXCVodVideoView.this.b == 3) {
                                TXCVodVideoView.this.a(2004, 0, "Playback started");
                                TXCVodVideoView.this.f10298a = 3;
                                TXCVodVideoView.this.t.sendEmptyMessage(100);
                                TXCVodVideoView.this.t.sendEmptyMessage(103);
                                return true;
                            }
                            return true;
                        }
                    }
                    TXCVodVideoView.this.a(i2, 0, "Buffer started");
                    return true;
                } else if (TextUtils.isEmpty(TXCVodVideoView.this.K) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                    try {
                        TXCVodVideoView.this.K = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                        return true;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return true;
                    }
                } else {
                    return true;
                }
            }
        };
        this.am = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i2, int i3) {
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.b("[onError] vodErrorEvent: " + i2 + " ,errorCode: " + i3);
                TXCVodVideoView.this.f10298a = -1;
                TXCVodVideoView.this.b = -1;
                if (i2 != -6101) {
                    if (i2 != -6004) {
                        switch (i2) {
                            case TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL /* -6010 */:
                            case TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL /* -6009 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL /* -6008 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL /* -6007 */:
                                break;
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL /* -6006 */:
                                TXCVodVideoView.x(TXCVodVideoView.this);
                                return true;
                            default:
                                switch (i2) {
                                    case -2305:
                                        TXCVodVideoView.y(TXCVodVideoView.this);
                                        return true;
                                    case -2304:
                                        TXCVodVideoView.w(TXCVodVideoView.this);
                                        return true;
                                    case -2303:
                                        TXCVodVideoView.this.a(-2303, i3, "The file does not exist");
                                        TXCVodVideoView.this.a();
                                        return true;
                                    default:
                                        long currentPosition = TXCVodVideoView.this.getCurrentPosition() - TXCVodVideoView.this.N;
                                        if (currentPosition < 0 || currentPosition > 500) {
                                            TXCVodVideoView.A(TXCVodVideoView.this);
                                        }
                                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                        tXCVodVideoView2.N = tXCVodVideoView2.getCurrentPosition();
                                        if (TXCVodVideoView.B(TXCVodVideoView.this) >= TXCVodVideoView.this.d.f10292a) {
                                            TXCVodVideoView.this.a(-2301, i3, "Disconnected from the network. Playback error");
                                            TXCVodVideoView.this.a();
                                        } else if (TXCVodVideoView.this.t != null) {
                                            if (TXCVodVideoView.this.ah != -1) {
                                                TXCVodVideoView tXCVodVideoView3 = TXCVodVideoView.this;
                                                TXCVodVideoView.b(tXCVodVideoView3, tXCVodVideoView3.ah, i2);
                                            }
                                            TXCVodVideoView.this.t.sendEmptyMessageDelayed(102, TXCVodVideoView.this.d.b * 1000.0f);
                                        }
                                        return true;
                                }
                        }
                    }
                    TXCVodVideoView.this.a(i2, i3, TXCVodVideoView.b(i2));
                    TXCVodVideoView.this.a();
                    return true;
                }
                if (TXCVodVideoView.this.G != null) {
                    Object obj = TXCVodVideoView.this.G.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.G.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.G.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.g()) {
                            TXCVodVideoView.this.b(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView tXCVodVideoView4 = TXCVodVideoView.this;
                tXCVodVideoView4.a((int) TXVodConstants.VOD_PLAY_ERR_DRM, i3, "DRM play failed cause by " + i3 + ".");
                return true;
            }
        };
        this.an = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final void a() {
                TXCVodVideoView.D(TXCVodVideoView.this);
                TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, 0, "seek complete");
            }
        };
        this.ao = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleData tPSubtitleData) {
                if (TXCVodVideoView.i && TXCVodVideoView.this.ad != null) {
                    TXCVodVideoView.this.ad.a(iTXVCubePlayer, tPSubtitleData);
                }
            }
        };
        this.ap = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                if (tPSubtitleFrameBuffer != null && TXCVodVideoView.this.ab != null) {
                    TXCVodVideoView.this.ab.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.r = new RenderProcessService.IRenderServiceEventListener() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
            @Override // com.tencent.liteav.txcplayer.ext.service.RenderProcessService.IRenderServiceEventListener
            public final void onRenderServiceEvent(ITXVCubePlayer iTXVCubePlayer, int i2, Bundle bundle) {
                TXCVodVideoView.this.a(i2, bundle);
            }
        };
        this.s = new a.InterfaceC0211a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar, int i2, int i3) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceChanged: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceChanged");
                TXCVodVideoView.this.x = i2;
                TXCVodVideoView.this.y = i3;
                boolean z = true;
                boolean z2 = TXCVodVideoView.this.b == 3;
                if (TXCVodVideoView.this.H.a() && (TXCVodVideoView.this.v != i2 || TXCVodVideoView.this.w != i3)) {
                    z = false;
                }
                if (TXCVodVideoView.this.c != null && z2 && z && TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceDestroyed: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceDestroyed");
                TXCVodVideoView.this.E = false;
                TXCVodVideoView.this.u = null;
                if (TXCVodVideoView.this.c != null) {
                    TXCVodVideoView.this.c.setSurface(null);
                }
                TXCVodVideoView.this.a(false);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceCreated: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceCreated");
                TXCVodVideoView.this.E = true;
                TXCVodVideoView.this.u = bVar;
                if (TXCVodVideoView.this.c == null) {
                    TXCVodVideoView.this.g();
                    return;
                }
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.a(tXCVodVideoView.c, bVar);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final boolean a(MotionEvent motionEvent) {
                return RenderProcessService.getInstance().onTouchEvent(TXCVodVideoView.this.c, motionEvent);
            }
        };
        this.aq = 0;
        this.as = false;
        a(context);
    }

    public static /* synthetic */ int A(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.al = 0;
        return 0;
    }

    public static /* synthetic */ int B(TXCVodVideoView tXCVodVideoView) {
        int i2 = tXCVodVideoView.al;
        tXCVodVideoView.al = i2 + 1;
        return i2;
    }

    public static /* synthetic */ boolean D(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.O = false;
        return false;
    }

    public static /* synthetic */ long m(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.C = 0L;
        return 0L;
    }

    public static /* synthetic */ boolean q(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.aa = true;
        return true;
    }

    public static /* synthetic */ void w(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.a("onHevcVideoDecoderError");
        af = true;
        if (!i) {
            i = c.a(LicenseChecker.a.PLAYER_PREMIUM);
            tXCVodVideoView.a("has advanced license!");
        }
        if (i && !TextUtils.isEmpty(tXCVodVideoView.l) && !tXCVodVideoView.d.q.equals(tXCVodVideoView.l)) {
            e eVar = tXCVodVideoView.d;
            eVar.q = tXCVodVideoView.l;
            eVar.D = tXCVodVideoView.m;
            long j2 = eVar.o;
            if (j2 > 0) {
                tXCVodVideoView.C = j2;
            }
            tXCVodVideoView.h();
            if (!tXCVodVideoView.g()) {
                tXCVodVideoView.b(false);
                return;
            }
            return;
        }
        tXCVodVideoView.a(-2304, 0, "Vod H265 decoding failed");
    }

    public static /* synthetic */ void x(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.a("onError onVideoDecoderError");
        if (tXCVodVideoView.f10298a != 4 && i && !TextUtils.isEmpty(tXCVodVideoView.l) && !tXCVodVideoView.d.q.equals(tXCVodVideoView.l)) {
            e eVar = tXCVodVideoView.d;
            eVar.q = tXCVodVideoView.l;
            eVar.D = tXCVodVideoView.m;
            long j2 = eVar.o;
            if (j2 > 0) {
                tXCVodVideoView.C = j2;
            }
            tXCVodVideoView.h();
            if (!tXCVodVideoView.g()) {
                tXCVodVideoView.b(false);
            }
        } else if (!tXCVodVideoView.aa && tXCVodVideoView.d.d) {
            if (Math.min(tXCVodVideoView.w, tXCVodVideoView.v) < 1080) {
                e eVar2 = tXCVodVideoView.d;
                if (eVar2.d) {
                    eVar2.d = false;
                    tXCVodVideoView.e(false);
                }
            }
        } else {
            tXCVodVideoView.a(TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL, 0, "VOD decoding failed");
        }
    }

    public static /* synthetic */ void y(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.a("onHLSKeyError");
        tXCVodVideoView.a(-2305, 0, "HLS decypt key get failed");
        ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.c;
        if (iTXVCubePlayer != null) {
            try {
                iTXVCubePlayer.stop();
            } catch (Exception e) {
                tXCVodVideoView.b("onHLSKeyError stop Exception: " + e.getMessage());
            }
            tXCVodVideoView.c.release();
            tXCVodVideoView.c = null;
        }
        tXCVodVideoView.f10298a = -1;
        tXCVodVideoView.b = -1;
    }

    public int getBitrateIndex() {
        int i2 = this.T;
        if (i2 == -1) {
            return i2;
        }
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            this.T = iTXVCubePlayer.getBitrateIndex();
        }
        return this.T;
    }

    public long getBufferDuration() {
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            long playableDurationMs = iTXVCubePlayer.getPlayableDurationMs();
            long currentPosition = getCurrentPosition();
            if (this.f10298a == 3) {
                this.B = currentPosition;
            }
            if (playableDurationMs < currentPosition) {
                playableDurationMs = currentPosition;
            }
            if (Math.abs(getDuration() - playableDurationMs) < 1000) {
                return getDuration();
            }
            return playableDurationMs;
        }
        return 0L;
    }

    public long getCurrentPosition() {
        int i2;
        if (this.O && (i2 = this.P) >= 0) {
            return i2;
        }
        long j2 = this.C;
        if (j2 <= 0) {
            ITXVCubePlayer iTXVCubePlayer = this.c;
            if (iTXVCubePlayer != null) {
                j2 = iTXVCubePlayer.getCurrentPosition();
            } else {
                j2 = 0;
            }
        }
        if (!this.d.i) {
            int i3 = this.P;
            if (j2 < i3) {
                return i3;
            }
            return j2;
        }
        return j2;
    }

    public int getDuration() {
        int duration;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null && (duration = (int) iTXVCubePlayer.getDuration()) > 0) {
            this.D = duration;
        }
        return this.D;
    }

    public com.tencent.liteav.txcplayer.model.b getMediaInfo() {
        try {
            ITXVCubePlayer iTXVCubePlayer = this.c;
            if (iTXVCubePlayer == null) {
                return null;
            }
            return iTXVCubePlayer.getMediaInfo();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public int getMetaRotationDegree() {
        return this.A;
    }

    public int getPlayerType() {
        return 2;
    }

    public String getServerIp() {
        return this.K;
    }

    public ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates() {
        try {
            ITXVCubePlayer iTXVCubePlayer = this.c;
            if (iTXVCubePlayer != null) {
                return iTXVCubePlayer.getSupportedBitrates();
            }
            return new ArrayList<>();
        } catch (Throwable th) {
            th.printStackTrace();
            return new ArrayList<>();
        }
    }

    public TPTrackInfo[] getTrackInfo() {
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            return iTXVCubePlayer.getTrackInfo();
        }
        return null;
    }

    public int getVideoHeight() {
        return this.w;
    }

    public int getVideoWidth() {
        return this.v;
    }

    public void setAudioNormalization(float f) {
        boolean z;
        if (c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            float f2 = this.R;
            if (f2 != f) {
                boolean z2 = false;
                if (f2 == 1.0f) {
                    z = true;
                } else {
                    z = false;
                }
                this.R = f;
                a("setAudioNormalization: ".concat(String.valueOf(f)));
                ITXVCubePlayer iTXVCubePlayer = this.c;
                if (iTXVCubePlayer != null) {
                    iTXVCubePlayer.setAudioNormalization(f);
                    if (!z && this.C == 0) {
                        long currentPosition = this.c.getCurrentPosition();
                        if (currentPosition > 0) {
                            ITXVCubePlayer iTXVCubePlayer2 = this.c;
                            e eVar = this.d;
                            if (eVar != null) {
                                z2 = eVar.i;
                            }
                            iTXVCubePlayer2.seekTo(currentPosition, z2);
                        }
                    }
                }
            }
        }
    }

    public void setAudioPlayoutVolume(int i2) {
        if (i2 > 0) {
            this.Q = i2;
        }
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setAudioVolume(i2);
        }
    }

    public void setAutoMaxBitrate(int i2) {
        this.W = i2;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null && i2 > 0) {
            iTXVCubePlayer.setAutoMaxBitrate(i2);
        }
    }

    public void setAutoPlay(boolean z) {
        this.d.p = z;
    }

    public void setBitrateIndex(int i2) {
        a("setBitrateIndex: ".concat(String.valueOf(i2)));
        if (getBitrateIndex() != i2 && i2 != -1000) {
            this.T = i2;
            if (this.f10298a != 5) {
                try {
                    ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = getSupportedBitrates();
                    if (supportedBitrates != null && supportedBitrates.size() > 0 && i2 != -1) {
                        int size = supportedBitrates.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size) {
                                break;
                            }
                            com.tencent.liteav.txcplayer.model.a aVar = supportedBitrates.get(i3);
                            i3++;
                            com.tencent.liteav.txcplayer.model.a aVar2 = aVar;
                            if (aVar2 != null && aVar2.f10294a == i2) {
                                this.U = aVar2.d;
                                this.V = i2;
                                break;
                            }
                        }
                    }
                    ITXVCubePlayer iTXVCubePlayer = this.c;
                    if (iTXVCubePlayer != null) {
                        if (this.d.j && i2 != -1 && iTXVCubePlayer.getBitrateIndex() != -1) {
                            this.c.setBitrateIndex(i2);
                        } else {
                            e(false);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void setConfig(e eVar) {
        String str;
        e eVar2 = this.d;
        if (eVar2 != null) {
            str = eVar2.q;
        } else {
            str = null;
        }
        if (eVar != null) {
            this.d = eVar;
            if (!TextUtils.isEmpty(str)) {
                this.d.q = str;
            }
        }
    }

    public void setListener(d dVar) {
        this.ar = dVar;
    }

    public void setMute(boolean z) {
        this.S = z;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer == null) {
            return;
        }
        if (z) {
            iTXVCubePlayer.setAudioVolume(0);
        } else {
            iTXVCubePlayer.setAudioVolume(this.Q);
        }
    }

    public void setPrivateConfig(Map<String, Object> map) {
        this.G = map;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setPrivateConfig(map);
        }
    }

    public void setRate(float f) {
        a("setRate: ".concat(String.valueOf(f)));
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setRate(f);
        }
        this.L = f;
    }

    public void setRender(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    a(String.format(Locale.getDefault(), "invalid render %d\n", Integer.valueOf(i2)));
                    return;
                }
                TextureRenderView textureRenderView = new TextureRenderView(this.F);
                if (this.c != null) {
                    textureRenderView.getSurfaceHolder().a(this.c);
                    textureRenderView.a(this.c.getVideoWidth(), this.c.getVideoHeight());
                    textureRenderView.b(this.c.getVideoSarNum(), this.c.getVideoSarDen());
                    textureRenderView.setAspectRatio(this.aq);
                }
                setRenderView(textureRenderView);
                return;
            }
            setRenderView(new SurfaceRenderView(this.F));
            return;
        }
        setRenderView(null);
    }

    public void setRenderMode(int i2) {
        this.aq = i2;
        com.tencent.liteav.txcvodplayer.renderer.a aVar = this.H;
        if (aVar != null) {
            aVar.setAspectRatio(i2);
        }
        com.tencent.liteav.txcvodplayer.renderer.a aVar2 = this.H;
        if (aVar2 != null) {
            aVar2.setVideoRotation(this.z);
        }
    }

    public void setRenderSurface(final Surface surface) {
        a.b bVar = new a.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.1
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                iTXVCubePlayer.setSurface(surface);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final Surface b() {
                return null;
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final Surface c() {
                return surface;
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final com.tencent.liteav.txcvodplayer.renderer.a a() {
                return TXCVodVideoView.this.H;
            }
        };
        this.u = bVar;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            a(iTXVCubePlayer, bVar);
        }
    }

    public void setRenderView(com.tencent.liteav.txcvodplayer.renderer.a aVar) {
        int i2;
        int i3;
        a("setRenderView: ".concat(String.valueOf(aVar)));
        if (this.H != null) {
            ITXVCubePlayer iTXVCubePlayer = this.c;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.setDisplay(null);
            }
            View view = this.H.getView();
            this.H.b(this.s);
            this.H = null;
            if (view.getParent() == this) {
                removeView(view);
            }
        }
        if (aVar == null) {
            this.u = null;
            ITXVCubePlayer iTXVCubePlayer2 = this.c;
            if (iTXVCubePlayer2 != null) {
                iTXVCubePlayer2.setSurface(null);
            }
            a(true);
            return;
        }
        this.H = aVar;
        aVar.setAspectRatio(this.aq);
        int i4 = this.v;
        if (i4 > 0 && (i3 = this.w) > 0) {
            aVar.a(i4, i3);
        }
        int i5 = this.I;
        if (i5 > 0 && (i2 = this.J) > 0) {
            aVar.b(i5, i2);
        }
        View view2 = this.H.getView();
        view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        if (view2.getParent() == null) {
            addView(view2);
        }
        this.H.a(this.s);
        this.H.setVideoRotation(this.z);
    }

    public void setStartTime(float f) {
        this.C = f * 1000.0f;
    }

    public void setSubtitleStyle(TXSubtitleRenderModel tXSubtitleRenderModel) {
        this.ac = tXSubtitleRenderModel;
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setSubtitleStyle(tXSubtitleRenderModel);
        }
    }

    public void setTXCOnSubtitleDataListener(ITXVCubePlayer.i iVar) {
        this.ad = iVar;
    }

    public void setTXCOnSubtitleFrameDataListener(ITXVCubePlayer.b bVar) {
        this.ab = bVar;
    }

    public void setTextureRenderView(TextureRenderView textureRenderView) {
        a("setTextureRenderView: ".concat(String.valueOf(textureRenderView)));
        if (this.c != null) {
            textureRenderView.getSurfaceHolder().a(this.c);
            textureRenderView.a(this.c.getVideoWidth(), this.c.getVideoHeight());
            textureRenderView.b(this.c.getVideoSarNum(), this.c.getVideoSarDen());
            textureRenderView.setAspectRatio(this.aq);
        }
        setRenderView(textureRenderView);
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoRotationDegree(int i2) {
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            if (i2 != 360) {
                b("not support degree ".concat(String.valueOf(i2)));
                return;
            }
            i2 = 0;
        }
        this.z = i2;
        com.tencent.liteav.txcvodplayer.renderer.a aVar = this.H;
        if (aVar != null) {
            aVar.setVideoRotation(i2);
        }
        com.tencent.liteav.txcvodplayer.renderer.a aVar2 = this.H;
        if (aVar2 != null) {
            aVar2.setAspectRatio(this.aq);
        }
    }

    public void setVideoURI(Uri uri) {
        if (uri != null) {
            this.d.q = uri.toString();
            if (i && this.k && !TextUtils.isEmpty(this.l) && !ae && af) {
                e eVar = this.d;
                eVar.D = this.m;
                eVar.q = this.l;
                h();
            }
        }
        this.D = 0;
        this.P = -1;
        this.al = 0;
        this.K = null;
        a("setVideoURI: ".concat(String.valueOf(uri)));
        g();
        requestLayout();
        invalidate();
    }

    public static /* synthetic */ void j(TXCVodVideoView tXCVodVideoView) {
        TPTrackInfo[] trackInfo;
        if (!i || tXCVodVideoView.ai.isEmpty() || (trackInfo = tXCVodVideoView.getTrackInfo()) == null || trackInfo.length == 0) {
            return;
        }
        for (int i2 = 0; i2 < trackInfo.length; i2++) {
            TPTrackInfo tPTrackInfo = trackInfo[i2];
            Iterator<TPTrackInfo> it = tXCVodVideoView.ai.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(tPTrackInfo.name, it.next().name) && !tPTrackInfo.isSelected) {
                    tXCVodVideoView.a(i2);
                    tXCVodVideoView.a("select external subtitle track on prepared when replay, index: " + i2 + " ,name:" + tPTrackInfo.name + " ,vod=" + tXCVodVideoView.hashCode());
                }
            }
        }
    }

    public static /* synthetic */ boolean d() {
        i = true;
        return true;
    }

    public static /* synthetic */ boolean f() {
        ae = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007f A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085 A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095 A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4 A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00df A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, LOOP:0: B:51:0x00f4->B:53:0x00fa, LOOP_END, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0110 A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017c A[Catch: Exception -> 0x005a, FileNotFoundException -> 0x019c, TryCatch #2 {FileNotFoundException -> 0x019c, Exception -> 0x005a, blocks: (B:9:0x002a, B:11:0x0052, B:13:0x0056, B:16:0x005d, B:18:0x0061, B:21:0x0068, B:23:0x0073, B:25:0x007f, B:26:0x0081, B:28:0x0085, B:29:0x0087, B:31:0x008f, B:32:0x0091, B:34:0x0095, B:36:0x00a4, B:38:0x00ac, B:39:0x00b2, B:41:0x00c4, B:42:0x00c9, B:44:0x00cf, B:46:0x00e4, B:48:0x00e8, B:50:0x00ee, B:51:0x00f4, B:53:0x00fa, B:54:0x010c, B:56:0x0110, B:57:0x0115, B:59:0x017c, B:60:0x0181, B:45:0x00df, B:35:0x009d, B:22:0x006e), top: B:65:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g() {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.TXCVodVideoView.g():boolean");
    }

    private void h() {
        a(2031, 0, "Vod HEVC downgrade playback");
    }

    private void i() {
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setOnPreparedListener(null);
            this.c.setOnVideoSizeChangedListener(null);
            this.c.setOnCompletionListener(null);
            this.c.setOnErrorListener(null);
            this.c.setOnInfoListener(null);
            this.c.setOnBufferingUpdateListener(null);
            this.c.setOnSeekCompleteListener(null);
            this.c.setOnSubtitleDataListener(null);
            this.c.setOnGetTXCVodVideoViewTargetState(null);
            this.c.setOnSubtitleFrameDataListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(boolean r5) {
        /*
            r4 = this;
            java.lang.String r0 = "replay, isFromErrorState = "
            java.lang.String r1 = java.lang.String.valueOf(r5)
            java.lang.String r0 = r0.concat(r1)
            r4.a(r0)
            r0 = 0
            if (r5 == 0) goto L25
            long r2 = r4.B
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 <= 0) goto L25
            r4.C = r2
            boolean r5 = r4.O
            if (r5 == 0) goto L51
            int r5 = r4.P
            if (r5 < 0) goto L51
            long r0 = (long) r5
            r4.C = r0
            goto L51
        L25:
            long r2 = r4.C
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 != 0) goto L46
            com.tencent.liteav.txcplayer.ITXVCubePlayer r5 = r4.c
            if (r5 == 0) goto L46
            int r0 = r4.D
            if (r0 <= 0) goto L51
            long r0 = r5.getCurrentPosition()
            int r5 = (int) r0
            long r0 = (long) r5
            r4.C = r0
            int r5 = r4.P
            long r2 = (long) r5
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L51
            long r0 = (long) r5
            r4.C = r0
            goto L51
        L46:
            boolean r5 = r4.O
            if (r5 == 0) goto L51
            int r5 = r4.P
            if (r5 < 0) goto L51
            long r0 = (long) r5
            r4.C = r0
        L51:
            boolean r5 = r4.g()
            if (r5 != 0) goto L5b
            r5 = 0
            r4.b(r5)
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.TXCVodVideoView.e(boolean):void");
    }

    public final void c(boolean z) {
        a("start isLoop:".concat(String.valueOf(z)));
        if (b()) {
            try {
                if (this.f10298a != 3 && !this.O) {
                    this.f10298a = 3;
                    if (!z) {
                        a(2004, 0, "Playback started");
                    }
                    Handler handler = this.t;
                    if (handler != null) {
                        handler.sendEmptyMessage(100);
                        this.t.sendEmptyMessage(103);
                    }
                }
                this.c.start();
            } catch (Exception e) {
                b("start exception: " + e.getMessage());
            }
        }
        this.b = 3;
    }

    public final boolean d(boolean z) {
        if (this.f10298a == 0) {
            this.e = z;
            return true;
        }
        return false;
    }

    public final void b(boolean z) {
        if (this.c != null) {
            a("release player " + this.c);
            a(this.c);
            this.c.release();
            i();
            this.c = null;
            this.f10298a = 0;
            this.O = false;
            this.P = -1;
            if (z) {
                this.b = 0;
                this.v = 0;
                this.w = 0;
                this.L = 1.0f;
                this.aa = false;
                this.T = -1000;
                this.U = -1;
                this.V = -1000;
                List<b> list = this.h;
                if (list != null) {
                    list.clear();
                }
                this.B = 0L;
                this.ah = -1;
                this.ag = null;
                this.ai.clear();
            }
            if (this.e && LiteavSystemInfo.getSystemOSVersionInt() >= 8) {
                ((AudioManager) this.F.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.O = false;
            this.P = -1;
        }
    }

    private void a(Context context) {
        this.F = context.getApplicationContext();
        this.d = new e();
        this.ai = new CopyOnWriteArrayList<>();
        a("new TXCVodVideoView");
        setRender(0);
        this.v = 0;
        this.w = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f10298a = 0;
        this.b = 0;
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            this.t = new a(this, mainLooper);
        } else {
            this.t = null;
        }
    }

    public final void c() {
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.publishAudioToNetwork();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ITXVCubePlayer iTXVCubePlayer, a.b bVar) {
        if (iTXVCubePlayer == null) {
            return;
        }
        if (bVar == null) {
            iTXVCubePlayer.setDisplay(null);
            return;
        }
        a("bindSurfaceHolder");
        Surface c = bVar.c();
        if (c == null) {
            c = bVar.b();
        }
        if (!RenderProcessService.getInstance().connectPlayer(iTXVCubePlayer, c, this.n, this.o)) {
            bVar.a(iTXVCubePlayer);
            return;
        }
        if (iTXVCubePlayer.getVideoWidth() > 0) {
            RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer);
        }
        RenderProcessService.getInstance().setRenderServiceEventListener(iTXVCubePlayer, this.r);
    }

    public final boolean b() {
        int i2;
        return (this.c == null || (i2 = this.f10298a) == -1 || i2 == 0 || i2 == 1) ? false : true;
    }

    public final void a(boolean z) {
        if (this.c != null) {
            a("releaseWithoutStop needClearLastImg:".concat(String.valueOf(z)));
            this.c.setDisplay(null);
            this.c.releaseTextureHost();
            if (z) {
                this.c.setSurfaceTexture(null);
            }
        }
    }

    public final void b(String str) {
        LiteavLog.e("TXCVodVideoView", "[" + hashCode() + "], " + str);
    }

    public static /* synthetic */ void b(TXCVodVideoView tXCVodVideoView, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_INDEX, i2);
        bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_ERROR_CODE, i3);
        bundle.putString("description", "Select Track Complete");
        tXCVodVideoView.a("VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, trackIndex=" + i2 + " ,errorCode=" + i3 + " ,vod=" + tXCVodVideoView.hashCode());
        tXCVodVideoView.a(TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, bundle);
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10298a = 0;
        this.b = 0;
        this.u = null;
        this.c = null;
        this.E = false;
        this.L = 1.0f;
        this.e = true;
        this.f = 2;
        this.O = false;
        this.P = -1;
        this.Q = 100;
        this.R = -100.0f;
        this.S = false;
        this.T = -1000;
        this.U = -1;
        this.V = -1000;
        this.W = -1;
        this.g = null;
        this.k = false;
        this.m = 0;
        this.n = -1;
        this.o = null;
        this.ah = -1;
        this.p = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i2, int i3, String str) {
                boolean z;
                int i4 = 0;
                if ((TXCVodVideoView.this.w != i3 && Math.abs(TXCVodVideoView.this.w - i3) > 16) || (TXCVodVideoView.this.v != i2 && Math.abs(TXCVodVideoView.this.v - i2) > 16)) {
                    z = true;
                } else {
                    z = false;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.I = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.J = iTXVCubePlayer.getVideoSarDen();
                ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = TXCVodVideoView.this.getSupportedBitrates();
                if (supportedBitrates != null) {
                    int size = supportedBitrates.size();
                    long j2 = 2147483647L;
                    while (i4 < size) {
                        com.tencent.liteav.txcplayer.model.a aVar = supportedBitrates.get(i4);
                        i4++;
                        com.tencent.liteav.txcplayer.model.a aVar2 = aVar;
                        long abs = Math.abs((TXCVodVideoView.this.v * TXCVodVideoView.this.w) - (aVar2.b * aVar2.c));
                        if (abs < j2) {
                            TXCVodVideoView.this.M = aVar2.b * aVar2.c;
                            j2 = abs;
                        }
                    }
                }
                long propertyLong = TXCVodVideoView.this.c.getPropertyLong(205);
                TXCVodVideoView.this.a("OnVideoSizeChangedListener width:" + TXCVodVideoView.this.v + ":height:" + TXCVodVideoView.this.w + ":SarNum:" + TXCVodVideoView.this.I + ":SarDen:" + TXCVodVideoView.this.J + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0) {
                    if (TXCVodVideoView.this.H != null) {
                        TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                        TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (z) {
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    if (!TXCVodVideoView.this.E && str != null) {
                        String str2 = i2 + "," + i3 + "," + str;
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                        bundle.putString("EVT_PARAM3", str2);
                    } else {
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w);
                    }
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message);
                    }
                } else if (!TXCVodVideoView.this.E && str != null) {
                    Message message2 = new Message();
                    message2.what = 101;
                    message2.arg1 = 2009;
                    Bundle bundle2 = new Bundle();
                    String str3 = i2 + "," + i3 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    bundle2.putString("EVT_PARAM3", str3);
                    bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message2.setData(bundle2);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message2);
                    }
                }
            }
        };
        this.q = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    TXCVodVideoView.this.a("setSurfaceBufferSize succeed");
                }
                if (c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                    TXCVodVideoView.d();
                    TXCVodVideoView.this.a("has advanced license!");
                }
                if (!TXCVodVideoView.i) {
                    TXCVodVideoView.this.c.checkSubtitle();
                }
                TXCVodVideoView.j(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == 1) {
                    TXCVodVideoView.this.a(2013, 0, "VOD ready(EVT_VOD_PLAY_PREPARED)");
                    if (!TXCVodVideoView.this.d.p) {
                        TXCVodVideoView.this.b = 4;
                    } else if (TXCVodVideoView.this.b != 4) {
                        TXCVodVideoView.this.b = 3;
                    }
                    TXCVodVideoView.this.f10298a = 2;
                }
                TXCVodVideoView.m(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == -1) {
                    TXCVodVideoView.this.f10298a = 3;
                    TXCVodVideoView.this.b = 3;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0 && TXCVodVideoView.this.H != null) {
                    TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                    TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                }
                if (TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }
        };
        this.aj = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f10298a = 5;
                TXCVodVideoView.this.b = 5;
                TXCVodVideoView.this.a(2006, 0, "Playback completed");
            }
        };
        this.ak = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final boolean a(int i2, int i3, int i4, Object obj) {
                long j2;
                if (i2 != 1006) {
                    if (i2 != 2007) {
                        if (i2 == 2011) {
                            TXCVodVideoView.this.a("EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i3)));
                            TXCVodVideoView.this.A = i3;
                            if (TXCVodVideoView.this.d.B && TXCVodVideoView.this.A > 0) {
                                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                                tXCVodVideoView.z = tXCVodVideoView.A;
                                if (TXCVodVideoView.this.H != null) {
                                    TXCVodVideoView.this.H.setVideoRotation(TXCVodVideoView.this.z);
                                }
                            }
                            int unused = TXCVodVideoView.this.A;
                            TXCVodVideoView.this.a(2011, 0, "Video angle " + TXCVodVideoView.this.A);
                            return true;
                        } else if (i2 != 2014) {
                            if (i2 != 2020) {
                                if (i2 != 2026) {
                                    TPPlayerMsg.TPVideoSeiInfo tPVideoSeiInfo = null;
                                    str = null;
                                    String str = null;
                                    tPVideoSeiInfo = null;
                                    if (i2 != 2030) {
                                        if (i2 != 2002) {
                                            if (i2 == 2003) {
                                                TXCVodVideoView.this.a("EVT_RENDER_FIRST_I_FRAME");
                                                if (!TXCVodVideoView.this.k) {
                                                    TXCVodVideoView.this.a(i2, 0, "VOD displayed the first frame");
                                                } else {
                                                    Bundle bundle = new Bundle();
                                                    if (!TextUtils.isEmpty(TXCVodVideoView.this.l) && TXCVodVideoView.this.l.equals(TXCVodVideoView.this.d.q)) {
                                                        bundle.putString("support_hevc", "0");
                                                    } else {
                                                        bundle.putString("support_hevc", "1");
                                                    }
                                                    TXCVodVideoView.this.a(i2, 0, "VOD displayed the first frame", bundle);
                                                }
                                                TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                                tXCVodVideoView2.setRate(tXCVodVideoView2.L);
                                                TXCVodVideoView.q(TXCVodVideoView.this);
                                                return true;
                                            }
                                            switch (i2) {
                                                case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        TXCVodVideoView.this.K = (String) obj;
                                                    }
                                                    String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.K + ",port:" + i3 + ",error:" + i4;
                                                    TXCVodVideoView.this.a(str2);
                                                    if (i4 == 0) {
                                                        TXCVodVideoView.this.a(i2, 0, str2);
                                                        return true;
                                                    }
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                                                    TXCVodVideoView.this.a(i2, 0, "Video data received");
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        str = (String) obj;
                                                    }
                                                    String str3 = "dns resolved url:" + str + ",error:" + i3;
                                                    TXCVodVideoView.this.a(str3);
                                                    if (i3 == 0) {
                                                        TXCVodVideoView.this.a(i2, 0, str3);
                                                        return true;
                                                    }
                                                    return true;
                                                default:
                                                    return true;
                                            }
                                        }
                                        TXCVodVideoView.this.a(i2, 0, "hit cache");
                                        return true;
                                    } else if (!TXCVodVideoView.i) {
                                        return false;
                                    } else {
                                        if (obj != null && (obj instanceof TPPlayerMsg.TPVideoSeiInfo)) {
                                            tPVideoSeiInfo = (TPPlayerMsg.TPVideoSeiInfo) obj;
                                        }
                                        if (tPVideoSeiInfo == null) {
                                            TXCVodVideoView.this.b("VOD_PLAY_EVT_VIDEO_SEI, seiInfo is null");
                                            return false;
                                        }
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_TYPE, tPVideoSeiInfo.videoSeiType);
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_SIZE, tPVideoSeiInfo.seiDataSize);
                                        bundle2.putByteArray(TXVodConstants.EVT_KEY_SEI_DATA, tPVideoSeiInfo.seiData);
                                        TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_VIDEO_SEI, bundle2);
                                        return true;
                                    }
                                }
                                TXCVodVideoView.this.a(i2, 0, "Audio first play");
                                return true;
                            }
                            if (obj != null && (obj instanceof Long)) {
                                j2 = ((Long) obj).longValue();
                            } else {
                                j2 = -1;
                            }
                            int i5 = (int) j2;
                            TXCVodVideoView.a(TXCVodVideoView.this, i5, i4);
                            TXCVodVideoView.b(TXCVodVideoView.this, i5, i4);
                            return true;
                        } else {
                            TXCVodVideoView.this.a(i2, 0, "Buffer ended");
                            if (i3 != 0) {
                                String str4 = TXCVodVideoView.this.d.q;
                                if (TextUtils.isEmpty(str4) && str4.endsWith("m3u8")) {
                                    return true;
                                }
                            }
                            if (TXCVodVideoView.this.b == 3) {
                                TXCVodVideoView.this.a(2004, 0, "Playback started");
                                TXCVodVideoView.this.f10298a = 3;
                                TXCVodVideoView.this.t.sendEmptyMessage(100);
                                TXCVodVideoView.this.t.sendEmptyMessage(103);
                                return true;
                            }
                            return true;
                        }
                    }
                    TXCVodVideoView.this.a(i2, 0, "Buffer started");
                    return true;
                } else if (TextUtils.isEmpty(TXCVodVideoView.this.K) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                    try {
                        TXCVodVideoView.this.K = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                        return true;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return true;
                    }
                } else {
                    return true;
                }
            }
        };
        this.am = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i2, int i3) {
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.b("[onError] vodErrorEvent: " + i2 + " ,errorCode: " + i3);
                TXCVodVideoView.this.f10298a = -1;
                TXCVodVideoView.this.b = -1;
                if (i2 != -6101) {
                    if (i2 != -6004) {
                        switch (i2) {
                            case TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL /* -6010 */:
                            case TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL /* -6009 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL /* -6008 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL /* -6007 */:
                                break;
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL /* -6006 */:
                                TXCVodVideoView.x(TXCVodVideoView.this);
                                return true;
                            default:
                                switch (i2) {
                                    case -2305:
                                        TXCVodVideoView.y(TXCVodVideoView.this);
                                        return true;
                                    case -2304:
                                        TXCVodVideoView.w(TXCVodVideoView.this);
                                        return true;
                                    case -2303:
                                        TXCVodVideoView.this.a(-2303, i3, "The file does not exist");
                                        TXCVodVideoView.this.a();
                                        return true;
                                    default:
                                        long currentPosition = TXCVodVideoView.this.getCurrentPosition() - TXCVodVideoView.this.N;
                                        if (currentPosition < 0 || currentPosition > 500) {
                                            TXCVodVideoView.A(TXCVodVideoView.this);
                                        }
                                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                        tXCVodVideoView2.N = tXCVodVideoView2.getCurrentPosition();
                                        if (TXCVodVideoView.B(TXCVodVideoView.this) >= TXCVodVideoView.this.d.f10292a) {
                                            TXCVodVideoView.this.a(-2301, i3, "Disconnected from the network. Playback error");
                                            TXCVodVideoView.this.a();
                                        } else if (TXCVodVideoView.this.t != null) {
                                            if (TXCVodVideoView.this.ah != -1) {
                                                TXCVodVideoView tXCVodVideoView3 = TXCVodVideoView.this;
                                                TXCVodVideoView.b(tXCVodVideoView3, tXCVodVideoView3.ah, i2);
                                            }
                                            TXCVodVideoView.this.t.sendEmptyMessageDelayed(102, TXCVodVideoView.this.d.b * 1000.0f);
                                        }
                                        return true;
                                }
                        }
                    }
                    TXCVodVideoView.this.a(i2, i3, TXCVodVideoView.b(i2));
                    TXCVodVideoView.this.a();
                    return true;
                }
                if (TXCVodVideoView.this.G != null) {
                    Object obj = TXCVodVideoView.this.G.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.G.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.G.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.g()) {
                            TXCVodVideoView.this.b(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView tXCVodVideoView4 = TXCVodVideoView.this;
                tXCVodVideoView4.a((int) TXVodConstants.VOD_PLAY_ERR_DRM, i3, "DRM play failed cause by " + i3 + ".");
                return true;
            }
        };
        this.an = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final void a() {
                TXCVodVideoView.D(TXCVodVideoView.this);
                TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, 0, "seek complete");
            }
        };
        this.ao = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleData tPSubtitleData) {
                if (TXCVodVideoView.i && TXCVodVideoView.this.ad != null) {
                    TXCVodVideoView.this.ad.a(iTXVCubePlayer, tPSubtitleData);
                }
            }
        };
        this.ap = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                if (tPSubtitleFrameBuffer != null && TXCVodVideoView.this.ab != null) {
                    TXCVodVideoView.this.ab.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.r = new RenderProcessService.IRenderServiceEventListener() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
            @Override // com.tencent.liteav.txcplayer.ext.service.RenderProcessService.IRenderServiceEventListener
            public final void onRenderServiceEvent(ITXVCubePlayer iTXVCubePlayer, int i2, Bundle bundle) {
                TXCVodVideoView.this.a(i2, bundle);
            }
        };
        this.s = new a.InterfaceC0211a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar, int i2, int i3) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceChanged: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceChanged");
                TXCVodVideoView.this.x = i2;
                TXCVodVideoView.this.y = i3;
                boolean z = true;
                boolean z2 = TXCVodVideoView.this.b == 3;
                if (TXCVodVideoView.this.H.a() && (TXCVodVideoView.this.v != i2 || TXCVodVideoView.this.w != i3)) {
                    z = false;
                }
                if (TXCVodVideoView.this.c != null && z2 && z && TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceDestroyed: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceDestroyed");
                TXCVodVideoView.this.E = false;
                TXCVodVideoView.this.u = null;
                if (TXCVodVideoView.this.c != null) {
                    TXCVodVideoView.this.c.setSurface(null);
                }
                TXCVodVideoView.this.a(false);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceCreated: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceCreated");
                TXCVodVideoView.this.E = true;
                TXCVodVideoView.this.u = bVar;
                if (TXCVodVideoView.this.c == null) {
                    TXCVodVideoView.this.g();
                    return;
                }
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.a(tXCVodVideoView.c, bVar);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final boolean a(MotionEvent motionEvent) {
                return RenderProcessService.getInstance().onTouchEvent(TXCVodVideoView.this.c, motionEvent);
            }
        };
        this.aq = 0;
        this.as = false;
        a(context);
    }

    public final void a() {
        Handler handler = this.t;
        if (handler != null) {
            handler.removeMessages(102);
            this.t.removeMessages(100);
            this.t.removeMessages(103);
        }
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            try {
                iTXVCubePlayer.stop();
                this.d.q = null;
                b(true);
            } catch (Exception e) {
                b("stop exception: " + e.getMessage());
            }
        }
        a("stop");
    }

    public static /* synthetic */ String b(int i2) {
        if (i2 != -6101) {
            switch (i2) {
                case TXVodConstants.VOD_PLAY_ERR_DOWNLOAD_FAIL /* -6011 */:
                    return "DOWNLOAD_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL /* -6010 */:
                    return "PROCESS_VIDEO_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL /* -6009 */:
                    return "RENDER_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL /* -6008 */:
                    return "DECODE_SUBTITLE_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL /* -6007 */:
                    return "DECODE_AUDIO_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL /* -6006 */:
                    return "DECODE_VIDEO_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_DEMUXER_TIMEOUT /* -6005 */:
                    return "DEMUXER_TIMEOUT";
                case TXVodConstants.VOD_PLAY_ERR_SYSTEM_PLAY_FAIL /* -6004 */:
                    return "SYSTEM_PLAY_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_DEMUXER_FAIL /* -6003 */:
                    return "DEMUXER_FAIL";
                case TXVodConstants.VOD_PLAY_ERR_GENERAL /* -6002 */:
                    return "ERR_GENERAL";
                default:
                    return "ERR_UNKNOW";
            }
        }
        return "PLAY_ERR_DRM";
    }

    public final void a(int i2, boolean z) {
        a("seek to " + i2 + ", isAccurateSeek=" + z);
        int min = Math.min(i2, getDuration());
        if (min >= 0 && b()) {
            try {
                this.P = min;
                this.c.seekTo(min, z);
                this.O = true;
                if (this.f10298a == 5) {
                    this.b = 3;
                }
            } catch (Exception e) {
                b("seekTo Exception : " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, String str, Bundle bundle) {
        if ((i2 == -2304 || i2 == 2106) && this.as) {
            return;
        }
        Message message = new Message();
        message.what = 101;
        Bundle bundle2 = new Bundle();
        message.arg1 = i2;
        String str2 = "(" + i2 + "," + i3 + ")-" + str;
        bundle2.putString("description", str2);
        bundle2.putInt(TXVodConstants.EVT_ERROR_CODE, i3);
        if (bundle != null) {
            bundle2.putBundle("extra", bundle);
        }
        message.setData(bundle2);
        Handler handler = this.t;
        if (handler != null) {
            handler.sendMessage(message);
            a("sendSimpleEvent ".concat(String.valueOf(str2)));
        }
        this.as = i2 == -2304 || i2 == 2106;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, String str) {
        a(i2, i3, str, (Bundle) null);
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f10298a = 0;
        this.b = 0;
        this.u = null;
        this.c = null;
        this.E = false;
        this.L = 1.0f;
        this.e = true;
        this.f = 2;
        this.O = false;
        this.P = -1;
        this.Q = 100;
        this.R = -100.0f;
        this.S = false;
        this.T = -1000;
        this.U = -1;
        this.V = -1000;
        this.W = -1;
        this.g = null;
        this.k = false;
        this.m = 0;
        this.n = -1;
        this.o = null;
        this.ah = -1;
        this.p = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i22, int i3, String str) {
                boolean z;
                int i4 = 0;
                if ((TXCVodVideoView.this.w != i3 && Math.abs(TXCVodVideoView.this.w - i3) > 16) || (TXCVodVideoView.this.v != i22 && Math.abs(TXCVodVideoView.this.v - i22) > 16)) {
                    z = true;
                } else {
                    z = false;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.I = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.J = iTXVCubePlayer.getVideoSarDen();
                ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = TXCVodVideoView.this.getSupportedBitrates();
                if (supportedBitrates != null) {
                    int size = supportedBitrates.size();
                    long j2 = 2147483647L;
                    while (i4 < size) {
                        com.tencent.liteav.txcplayer.model.a aVar = supportedBitrates.get(i4);
                        i4++;
                        com.tencent.liteav.txcplayer.model.a aVar2 = aVar;
                        long abs = Math.abs((TXCVodVideoView.this.v * TXCVodVideoView.this.w) - (aVar2.b * aVar2.c));
                        if (abs < j2) {
                            TXCVodVideoView.this.M = aVar2.b * aVar2.c;
                            j2 = abs;
                        }
                    }
                }
                long propertyLong = TXCVodVideoView.this.c.getPropertyLong(205);
                TXCVodVideoView.this.a("OnVideoSizeChangedListener width:" + TXCVodVideoView.this.v + ":height:" + TXCVodVideoView.this.w + ":SarNum:" + TXCVodVideoView.this.I + ":SarDen:" + TXCVodVideoView.this.J + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0) {
                    if (TXCVodVideoView.this.H != null) {
                        TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                        TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (z) {
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    if (!TXCVodVideoView.this.E && str != null) {
                        String str2 = i22 + "," + i3 + "," + str;
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                        bundle.putString("EVT_PARAM3", str2);
                    } else {
                        bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w);
                    }
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message);
                    }
                } else if (!TXCVodVideoView.this.E && str != null) {
                    Message message2 = new Message();
                    message2.what = 101;
                    message2.arg1 = 2009;
                    Bundle bundle2 = new Bundle();
                    String str3 = i22 + "," + i3 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.v + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.w + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.v);
                    bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.w);
                    bundle2.putString("EVT_PARAM3", str3);
                    bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message2.setData(bundle2);
                    if (TXCVodVideoView.this.t != null) {
                        TXCVodVideoView.this.t.sendMessage(message2);
                    }
                }
            }
        };
        this.q = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    TXCVodVideoView.this.a("setSurfaceBufferSize succeed");
                }
                if (c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                    TXCVodVideoView.d();
                    TXCVodVideoView.this.a("has advanced license!");
                }
                if (!TXCVodVideoView.i) {
                    TXCVodVideoView.this.c.checkSubtitle();
                }
                TXCVodVideoView.j(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == 1) {
                    TXCVodVideoView.this.a(2013, 0, "VOD ready(EVT_VOD_PLAY_PREPARED)");
                    if (!TXCVodVideoView.this.d.p) {
                        TXCVodVideoView.this.b = 4;
                    } else if (TXCVodVideoView.this.b != 4) {
                        TXCVodVideoView.this.b = 3;
                    }
                    TXCVodVideoView.this.f10298a = 2;
                }
                TXCVodVideoView.m(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f10298a == -1) {
                    TXCVodVideoView.this.f10298a = 3;
                    TXCVodVideoView.this.b = 3;
                }
                TXCVodVideoView.this.v = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.w = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.v != 0 && TXCVodVideoView.this.w != 0 && TXCVodVideoView.this.H != null) {
                    TXCVodVideoView.this.H.a(TXCVodVideoView.this.v, TXCVodVideoView.this.w);
                    TXCVodVideoView.this.H.b(TXCVodVideoView.this.I, TXCVodVideoView.this.J);
                }
                if (TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }
        };
        this.aj = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f10298a = 5;
                TXCVodVideoView.this.b = 5;
                TXCVodVideoView.this.a(2006, 0, "Playback completed");
            }
        };
        this.ak = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final boolean a(int i22, int i3, int i4, Object obj) {
                long j2;
                if (i22 != 1006) {
                    if (i22 != 2007) {
                        if (i22 == 2011) {
                            TXCVodVideoView.this.a("EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i3)));
                            TXCVodVideoView.this.A = i3;
                            if (TXCVodVideoView.this.d.B && TXCVodVideoView.this.A > 0) {
                                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                                tXCVodVideoView.z = tXCVodVideoView.A;
                                if (TXCVodVideoView.this.H != null) {
                                    TXCVodVideoView.this.H.setVideoRotation(TXCVodVideoView.this.z);
                                }
                            }
                            int unused = TXCVodVideoView.this.A;
                            TXCVodVideoView.this.a(2011, 0, "Video angle " + TXCVodVideoView.this.A);
                            return true;
                        } else if (i22 != 2014) {
                            if (i22 != 2020) {
                                if (i22 != 2026) {
                                    TPPlayerMsg.TPVideoSeiInfo tPVideoSeiInfo = null;
                                    str = null;
                                    String str = null;
                                    tPVideoSeiInfo = null;
                                    if (i22 != 2030) {
                                        if (i22 != 2002) {
                                            if (i22 == 2003) {
                                                TXCVodVideoView.this.a("EVT_RENDER_FIRST_I_FRAME");
                                                if (!TXCVodVideoView.this.k) {
                                                    TXCVodVideoView.this.a(i22, 0, "VOD displayed the first frame");
                                                } else {
                                                    Bundle bundle = new Bundle();
                                                    if (!TextUtils.isEmpty(TXCVodVideoView.this.l) && TXCVodVideoView.this.l.equals(TXCVodVideoView.this.d.q)) {
                                                        bundle.putString("support_hevc", "0");
                                                    } else {
                                                        bundle.putString("support_hevc", "1");
                                                    }
                                                    TXCVodVideoView.this.a(i22, 0, "VOD displayed the first frame", bundle);
                                                }
                                                TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                                tXCVodVideoView2.setRate(tXCVodVideoView2.L);
                                                TXCVodVideoView.q(TXCVodVideoView.this);
                                                return true;
                                            }
                                            switch (i22) {
                                                case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        TXCVodVideoView.this.K = (String) obj;
                                                    }
                                                    String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.K + ",port:" + i3 + ",error:" + i4;
                                                    TXCVodVideoView.this.a(str2);
                                                    if (i4 == 0) {
                                                        TXCVodVideoView.this.a(i22, 0, str2);
                                                        return true;
                                                    }
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                                                    TXCVodVideoView.this.a(i22, 0, "Video data received");
                                                    return true;
                                                case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                                                    if (obj != null && (obj instanceof String)) {
                                                        str = (String) obj;
                                                    }
                                                    String str3 = "dns resolved url:" + str + ",error:" + i3;
                                                    TXCVodVideoView.this.a(str3);
                                                    if (i3 == 0) {
                                                        TXCVodVideoView.this.a(i22, 0, str3);
                                                        return true;
                                                    }
                                                    return true;
                                                default:
                                                    return true;
                                            }
                                        }
                                        TXCVodVideoView.this.a(i22, 0, "hit cache");
                                        return true;
                                    } else if (!TXCVodVideoView.i) {
                                        return false;
                                    } else {
                                        if (obj != null && (obj instanceof TPPlayerMsg.TPVideoSeiInfo)) {
                                            tPVideoSeiInfo = (TPPlayerMsg.TPVideoSeiInfo) obj;
                                        }
                                        if (tPVideoSeiInfo == null) {
                                            TXCVodVideoView.this.b("VOD_PLAY_EVT_VIDEO_SEI, seiInfo is null");
                                            return false;
                                        }
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_TYPE, tPVideoSeiInfo.videoSeiType);
                                        bundle2.putInt(TXVodConstants.EVT_KEY_SEI_SIZE, tPVideoSeiInfo.seiDataSize);
                                        bundle2.putByteArray(TXVodConstants.EVT_KEY_SEI_DATA, tPVideoSeiInfo.seiData);
                                        TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_VIDEO_SEI, bundle2);
                                        return true;
                                    }
                                }
                                TXCVodVideoView.this.a(i22, 0, "Audio first play");
                                return true;
                            }
                            if (obj != null && (obj instanceof Long)) {
                                j2 = ((Long) obj).longValue();
                            } else {
                                j2 = -1;
                            }
                            int i5 = (int) j2;
                            TXCVodVideoView.a(TXCVodVideoView.this, i5, i4);
                            TXCVodVideoView.b(TXCVodVideoView.this, i5, i4);
                            return true;
                        } else {
                            TXCVodVideoView.this.a(i22, 0, "Buffer ended");
                            if (i3 != 0) {
                                String str4 = TXCVodVideoView.this.d.q;
                                if (TextUtils.isEmpty(str4) && str4.endsWith("m3u8")) {
                                    return true;
                                }
                            }
                            if (TXCVodVideoView.this.b == 3) {
                                TXCVodVideoView.this.a(2004, 0, "Playback started");
                                TXCVodVideoView.this.f10298a = 3;
                                TXCVodVideoView.this.t.sendEmptyMessage(100);
                                TXCVodVideoView.this.t.sendEmptyMessage(103);
                                return true;
                            }
                            return true;
                        }
                    }
                    TXCVodVideoView.this.a(i22, 0, "Buffer started");
                    return true;
                } else if (TextUtils.isEmpty(TXCVodVideoView.this.K) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                    try {
                        TXCVodVideoView.this.K = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                        return true;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return true;
                    }
                } else {
                    return true;
                }
            }
        };
        this.am = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i22, int i3) {
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.b("[onError] vodErrorEvent: " + i22 + " ,errorCode: " + i3);
                TXCVodVideoView.this.f10298a = -1;
                TXCVodVideoView.this.b = -1;
                if (i22 != -6101) {
                    if (i22 != -6004) {
                        switch (i22) {
                            case TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL /* -6010 */:
                            case TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL /* -6009 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL /* -6008 */:
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL /* -6007 */:
                                break;
                            case TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL /* -6006 */:
                                TXCVodVideoView.x(TXCVodVideoView.this);
                                return true;
                            default:
                                switch (i22) {
                                    case -2305:
                                        TXCVodVideoView.y(TXCVodVideoView.this);
                                        return true;
                                    case -2304:
                                        TXCVodVideoView.w(TXCVodVideoView.this);
                                        return true;
                                    case -2303:
                                        TXCVodVideoView.this.a(-2303, i3, "The file does not exist");
                                        TXCVodVideoView.this.a();
                                        return true;
                                    default:
                                        long currentPosition = TXCVodVideoView.this.getCurrentPosition() - TXCVodVideoView.this.N;
                                        if (currentPosition < 0 || currentPosition > 500) {
                                            TXCVodVideoView.A(TXCVodVideoView.this);
                                        }
                                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                                        tXCVodVideoView2.N = tXCVodVideoView2.getCurrentPosition();
                                        if (TXCVodVideoView.B(TXCVodVideoView.this) >= TXCVodVideoView.this.d.f10292a) {
                                            TXCVodVideoView.this.a(-2301, i3, "Disconnected from the network. Playback error");
                                            TXCVodVideoView.this.a();
                                        } else if (TXCVodVideoView.this.t != null) {
                                            if (TXCVodVideoView.this.ah != -1) {
                                                TXCVodVideoView tXCVodVideoView3 = TXCVodVideoView.this;
                                                TXCVodVideoView.b(tXCVodVideoView3, tXCVodVideoView3.ah, i22);
                                            }
                                            TXCVodVideoView.this.t.sendEmptyMessageDelayed(102, TXCVodVideoView.this.d.b * 1000.0f);
                                        }
                                        return true;
                                }
                        }
                    }
                    TXCVodVideoView.this.a(i22, i3, TXCVodVideoView.b(i22));
                    TXCVodVideoView.this.a();
                    return true;
                }
                if (TXCVodVideoView.this.G != null) {
                    Object obj = TXCVodVideoView.this.G.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.G.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.G.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.g()) {
                            TXCVodVideoView.this.b(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView tXCVodVideoView4 = TXCVodVideoView.this;
                tXCVodVideoView4.a((int) TXVodConstants.VOD_PLAY_ERR_DRM, i3, "DRM play failed cause by " + i3 + ".");
                return true;
            }
        };
        this.an = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final void a() {
                TXCVodVideoView.D(TXCVodVideoView.this);
                TXCVodVideoView.this.a((int) TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, 0, "seek complete");
            }
        };
        this.ao = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleData tPSubtitleData) {
                if (TXCVodVideoView.i && TXCVodVideoView.this.ad != null) {
                    TXCVodVideoView.this.ad.a(iTXVCubePlayer, tPSubtitleData);
                }
            }
        };
        this.ap = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                if (tPSubtitleFrameBuffer != null && TXCVodVideoView.this.ab != null) {
                    TXCVodVideoView.this.ab.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.r = new RenderProcessService.IRenderServiceEventListener() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
            @Override // com.tencent.liteav.txcplayer.ext.service.RenderProcessService.IRenderServiceEventListener
            public final void onRenderServiceEvent(ITXVCubePlayer iTXVCubePlayer, int i22, Bundle bundle) {
                TXCVodVideoView.this.a(i22, bundle);
            }
        };
        this.s = new a.InterfaceC0211a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar, int i22, int i3) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceChanged: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceChanged");
                TXCVodVideoView.this.x = i22;
                TXCVodVideoView.this.y = i3;
                boolean z = true;
                boolean z2 = TXCVodVideoView.this.b == 3;
                if (TXCVodVideoView.this.H.a() && (TXCVodVideoView.this.v != i22 || TXCVodVideoView.this.w != i3)) {
                    z = false;
                }
                if (TXCVodVideoView.this.c != null && z2 && z && TXCVodVideoView.this.b == 3) {
                    TXCVodVideoView.this.c(false);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceDestroyed: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceDestroyed");
                TXCVodVideoView.this.E = false;
                TXCVodVideoView.this.u = null;
                if (TXCVodVideoView.this.c != null) {
                    TXCVodVideoView.this.c.setSurface(null);
                }
                TXCVodVideoView.this.a(false);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.H) {
                    TXCVodVideoView.this.b("onSurfaceCreated: unmatched render callback");
                    return;
                }
                TXCVodVideoView.this.a("onSurfaceCreated");
                TXCVodVideoView.this.E = true;
                TXCVodVideoView.this.u = bVar;
                if (TXCVodVideoView.this.c == null) {
                    TXCVodVideoView.this.g();
                    return;
                }
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.a(tXCVodVideoView.c, bVar);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0211a
            public final boolean a(MotionEvent motionEvent) {
                return RenderProcessService.getInstance().onTouchEvent(TXCVodVideoView.this.c, motionEvent);
            }
        };
        this.aq = 0;
        this.as = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, Bundle bundle) {
        d dVar = this.ar;
        if (dVar != null) {
            dVar.a(i2, bundle);
        }
    }

    private static void a(ITXVCubePlayer iTXVCubePlayer) {
        if (iTXVCubePlayer != null) {
            RenderProcessService.getInstance().stopRenderProcess(iTXVCubePlayer);
        }
    }

    public final void a(int i2) {
        TPTrackInfo[] trackInfo = getTrackInfo();
        if (trackInfo != null && i2 >= 0 && i2 < trackInfo.length) {
            TPTrackInfo tPTrackInfo = trackInfo[i2];
            if (tPTrackInfo.trackType == 3 && tPTrackInfo.isInternal && !i) {
                return;
            }
        }
        ITXVCubePlayer iTXVCubePlayer = this.c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.selectTrack(i2);
            a(true, i2);
        }
    }

    public final void a(boolean z, int i2) {
        TPTrackInfo[] trackInfo = getTrackInfo();
        if (trackInfo == null || trackInfo.length == 0 || i2 < 0 || i2 >= trackInfo.length) {
            return;
        }
        TPTrackInfo tPTrackInfo = trackInfo[i2];
        if (z) {
            if (tPTrackInfo.getTrackType() == 2) {
                this.ah = i2;
                a("[recordStartSelectTrackInfo] selectingAudioTrack: " + this.ah + " ,vod=" + hashCode());
            }
        } else if (tPTrackInfo.getTrackType() == 2 && this.ah == i2) {
            this.ah = -1;
        } else if (tPTrackInfo.getTrackType() == 3 && this.ai.contains(tPTrackInfo)) {
            this.ai.remove(tPTrackInfo);
            a("[recordStartSelectTrackInfo], deselect subtitle track:" + tPTrackInfo.getName() + " ,vod=" + hashCode());
        }
    }

    public final void a(String str) {
        LiteavLog.i("TXCVodVideoView", "[" + hashCode() + "], " + str);
    }

    public static /* synthetic */ void a(TXCVodVideoView tXCVodVideoView, int i2, int i3) {
        TPTrackInfo[] trackInfo;
        if (i3 != 0 || (trackInfo = tXCVodVideoView.getTrackInfo()) == null || trackInfo.length == 0 || i2 < 0 || i2 >= trackInfo.length) {
            return;
        }
        TPTrackInfo tPTrackInfo = trackInfo[i2];
        if (tPTrackInfo.getTrackType() == 2) {
            tXCVodVideoView.ag = tPTrackInfo.getName();
            tXCVodVideoView.ah = -1;
            tXCVodVideoView.a("[recordSelectTrackCompleteInfo] audio track name: " + tXCVodVideoView.ag + " ,vod=" + tXCVodVideoView.hashCode());
        } else if (tPTrackInfo.getTrackType() != 3 || tXCVodVideoView.ai.contains(tPTrackInfo)) {
        } else {
            tXCVodVideoView.ai.add(tPTrackInfo);
            tXCVodVideoView.a("[recordSelectTrackCompleteInfo] subtitle track name: " + tPTrackInfo.getName() + " ,vod=" + tXCVodVideoView.hashCode());
        }
    }
}
