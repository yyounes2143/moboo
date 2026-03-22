package com.tencent.thumbplayer.tcmedia.tplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayer;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener;
import com.tencent.thumbplayer.tcmedia.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPVideoInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy;
import com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.tcmedia.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.tcmedia.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyMsg;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.tplayer.a.g;
import com.tencent.thumbplayer.tcmedia.tplayer.e;
import com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.tcmedia.utils.j;
import com.tencent.thumbplayer.tcmedia.utils.n;
import com.tencent.thumbplayer.tcmedia.utils.o;
import com.tencent.thumbplayer.tcmedia.utils.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public class b implements ITPPlayer {
    private static final SparseIntArray F;

    /* renamed from: a  reason: collision with root package name */
    private static String f10667a = "api call:";
    private static AtomicInteger v = new AtomicInteger(1000);
    private long A;
    private int B;
    private int C;
    private TPDLProxyMsg.TPPDTInfo[] D;
    private boolean E;
    private final com.tencent.thumbplayer.tcmedia.adapter.a b;
    private c c;
    private com.tencent.thumbplayer.tcmedia.c.a d;
    private com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b e;
    private com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.c f;
    private com.tencent.thumbplayer.tcmedia.c.a.a g;
    private com.tencent.thumbplayer.tcmedia.tplayer.plugins.b h;
    private HandlerThread i;
    private Looper j;
    private a k;
    private com.tencent.thumbplayer.tcmedia.tplayer.a l;
    private String m;
    private boolean n;
    private boolean o;
    private int p;
    private ArrayList<String> q;
    private long r;
    private long s;
    private long t;
    private com.tencent.thumbplayer.tcmedia.e.a u;
    private AtomicInteger w;
    private boolean x;
    private g y;
    private Map<Long, Long> z;

    /* loaded from: classes6.dex */
    public class a extends Handler {
        private b b;

        public a(b bVar) {
            this.b = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c cVar = b.this.c;
            if (cVar != null) {
                int i = message.what;
                if (i != 257) {
                    if (i == 1256) {
                        b.this.a(message);
                        return;
                    }
                    switch (i) {
                        case 260:
                            cVar.onCompletion(this.b);
                            return;
                        case 261:
                            b.this.b(message.arg1);
                            e.a aVar = (e.a) message.obj;
                            if (aVar != null && !b.this.d.c()) {
                                cVar.onInfo(this.b, message.arg1, aVar.f10673a, aVar.b, aVar.c);
                                return;
                            } else if (aVar != null) {
                                cVar.onInfo(this.b, message.arg1, aVar.f10673a, aVar.b, aVar.c);
                                return;
                            } else {
                                return;
                            }
                        case 262:
                            e.a aVar2 = (e.a) message.obj;
                            if (aVar2 != null) {
                                cVar.onError(this.b, message.arg1, message.arg2, aVar2.f10673a, aVar2.b);
                                return;
                            }
                            return;
                        case TPReportParams.LIVE_STEP_PLAY /* 263 */:
                            cVar.onSeekComplete(this.b);
                            return;
                        case 264:
                            e.a aVar3 = (e.a) message.obj;
                            if (aVar3 != null) {
                                cVar.onVideoSizeChanged(this.b, aVar3.f10673a, aVar3.b);
                                b.this.d.a(aVar3.f10673a, aVar3.b);
                                return;
                            }
                            return;
                        case 265:
                            cVar.onSubtitleData(this.b, (TPSubtitleData) message.obj);
                            return;
                        case 266:
                            cVar.onVideoFrameOut(this.b, (TPVideoFrameBuffer) message.obj);
                            return;
                        case 267:
                            cVar.onAudioFrameOut(this.b, (TPAudioFrameBuffer) message.obj);
                            return;
                        case 268:
                            cVar.onError(this.b, message.arg1, message.arg2, 0L, 0L);
                            return;
                        case 269:
                            cVar.onInfo(this.b, 1002, message.arg1, message.arg2, message.obj);
                            return;
                        case 270:
                            cVar.onInfo(this.b, 1003, message.arg1, message.arg2, message.obj);
                            return;
                        case 271:
                            cVar.onInfo(this.b, 1001, message.arg1, message.arg2, message.obj);
                            return;
                        case 272:
                            cVar.onInfo(this.b, 1004, message.arg1, message.arg2, message.obj);
                            return;
                        case 273:
                            cVar.onInfo(this.b, 1005, message.arg1, message.arg2, message.obj);
                            return;
                        case 274:
                            cVar.onInfo(this.b, 1006, message.arg1, message.arg2, message.obj);
                            return;
                        case 275:
                            cVar.onInfo(this.b, 1007, message.arg1, message.arg2, message.obj);
                            return;
                        case 276:
                            cVar.onInfo(this.b, 1008, message.arg1, message.arg2, message.obj);
                            return;
                        case 277:
                            cVar.onStateChange(message.arg1, message.arg2);
                            return;
                        case 278:
                            if (b.this.b != null) {
                                try {
                                    b.this.b.a(new TPOptionalParam().buildLong(8000, message.arg1));
                                    com.tencent.thumbplayer.tcmedia.e.a aVar4 = b.this.u;
                                    aVar4.c("MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION bitrate:" + message.arg1);
                                } catch (IllegalStateException e) {
                                    b.this.u.a(e);
                                }
                            }
                            if (b.this.o) {
                                cVar.onInfo(this.b, 1010, message.arg1, message.arg2, message.obj);
                                return;
                            }
                            return;
                        case 279:
                            cVar.onSubtitleFrameOut(this.b, (TPSubtitleFrameBuffer) message.obj);
                            return;
                        case 280:
                            cVar.onStopAsyncComplete(this.b);
                            return;
                        case 281:
                            cVar.onInfo(this.b, 1015, message.arg1, message.arg2, message.obj);
                            return;
                        case 282:
                            b.this.c();
                            return;
                        case 283:
                            cVar.onInfo(this.b, 1016, message.arg1, message.arg2, message.obj);
                            return;
                        case 284:
                            cVar.onInfo(this.b, 1017, message.arg1, message.arg2, message.obj);
                            return;
                        case 285:
                            cVar.onInfo(this.b, 1018, message.arg1, message.arg2, message.obj);
                            return;
                        default:
                            return;
                    }
                }
                b.this.u.c("onPrepared");
                b.this.c(1004);
                cVar.onPrepared(this.b);
            }
        }

        public a(b bVar, Looper looper) {
            super(looper);
            this.b = bVar;
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.tplayer.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0233b implements c.a, c.b, c.InterfaceC0220c, c.d, c.e, c.f, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p, ITPPlayListener {
        public C0233b() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onVideoProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onAudioProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.j
        public void c() {
            b.this.f();
            b.this.a(110, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(b.this.getCurrentPositionMs())).a());
            b.this.a((int) TPReportParams.LIVE_STEP_PLAY, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            ITPPlayerProxyListener j = b.this.d.j();
            if (j != null) {
                return j.getAdvRemainTimeMs();
            }
            return -1L;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i, String str) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return "";
            }
            return b.this.g.c(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            com.tencent.thumbplayer.tcmedia.adapter.a aVar = b.this.b;
            if (aVar != null) {
                return aVar.a();
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long[] getCurrentPlayOffset() {
            return b.this.b.u();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return b.this.getCurrentPositionMs();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i, String str) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return "";
            }
            return b.this.g.b(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i, String str) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return -1L;
            }
            return b.this.g.a(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j) {
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            com.tencent.thumbplayer.tcmedia.adapter.a aVar = b.this.b;
            if (aVar != null) {
                return aVar.p() - b.this.b.o();
            }
            return 0L;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            b.this.u.c("onDownloadCdnUrlExpired");
            b.this.a(275, 0, 0, (Object) map);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.u;
            aVar.c("onDownloadCdnUrlInfoUpdate, url:" + str + ", cdnIp:" + str2 + ", uip:" + str3 + ", errorCodeStr:" + str4);
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            b.this.a(201, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("url", str).a("cdnip", str2).a("cdnuip", str3).a());
            b.this.a(270, 0, 0, (Object) tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            b.this.u.c("onDownloadCdnUrlUpdate, url:".concat(String.valueOf(str)));
            b.this.a(269, 0, 0, (Object) str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i, int i2, String str) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.u;
            aVar.c("onDownloadError, moduleID:" + i + ", errorCode:" + i2 + ", extInfo:" + str);
            b.this.a(i, i2);
            b.this.a(268, i, i2, (Object) str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            b.this.u.c("onDownloadFinish");
            b.this.a(271, 0, 0, (Object) 0);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            long j3 = i;
            b.this.r = j3;
            b.this.s = j;
            b.this.t = j2;
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = j3;
            tPDownLoadProgressInfo.downloadSpeedKBps = i2;
            tPDownLoadProgressInfo.currentDownloadSize = j;
            tPDownLoadProgressInfo.totalFileSize = j2;
            tPDownLoadProgressInfo.extraInfo = str;
            b.this.a(200, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("speed", Integer.valueOf(i2)).a("spanId", str).a());
            b.this.a(274, 0, 0, (Object) tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.u;
            aVar.c("onDownloadProtocolUpdate, protocol:" + str + ", protocolVer:" + str2);
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            b.this.a(202, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("proto", str).a("protover", str2).a());
            b.this.a(273, 0, 0, (Object) tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i) {
            if (i != b.this.p) {
                b.this.u.c("onDownloadStatusUpdate, status:".concat(String.valueOf(i)));
                b.this.p = i;
            }
            b.this.a(272, i, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            b bVar;
            int i2;
            com.tencent.thumbplayer.tcmedia.e.a aVar;
            String concat;
            b bVar2;
            int i3;
            if (i != 1) {
                if (i != 2) {
                    switch (i) {
                        case 8:
                            com.tencent.thumbplayer.tcmedia.e.a aVar2 = b.this.u;
                            aVar2.c("AB test info from download proxy received, key: " + obj + ", value: " + obj2);
                            HashMap hashMap = new HashMap();
                            hashMap.put((String) obj, Integer.valueOf((String) obj2));
                            b.this.a(281, 0, 0, (Object) hashMap);
                            break;
                        case 9:
                            b.this.u.c("onDownload Refresh M3U8");
                            bVar2 = b.this;
                            i3 = 282;
                            bVar2.a(i3, 0, 0, (Object) null);
                            break;
                        case 10:
                            b.this.u.c("onDownload multi network card not open, current low speed");
                            bVar2 = b.this;
                            i3 = 283;
                            bVar2.a(i3, 0, 0, (Object) null);
                            break;
                        case 11:
                            obj = (String) obj;
                            b.this.u.c("onDownload multi network use status change".concat(String.valueOf(obj)));
                            bVar = b.this;
                            i2 = 284;
                            break;
                        case 12:
                            b.this.u.c("onDownload proxy hit cache");
                            bVar2 = b.this;
                            i3 = 285;
                            bVar2.a(i3, 0, 0, (Object) null);
                            break;
                    }
                } else {
                    if (!(obj3 instanceof Integer)) {
                        aVar = b.this.u;
                        concat = "MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION, err ext3.";
                    } else {
                        Integer num = (Integer) obj3;
                        b.this.u.c("onDownload suggest bitrate(bps):".concat(String.valueOf(num)));
                        b.this.a(278, num.intValue(), 0, (Object) null);
                        aVar = b.this.u;
                        concat = "MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION bitrate".concat(String.valueOf(num));
                    }
                    aVar.c(concat);
                }
                return null;
            }
            b.this.u.c("onDownloadNoMoreData");
            bVar = b.this;
            i2 = 276;
            bVar.a(i2, 0, 0, obj);
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i, String str, long j, long j2) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.g.b(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i, String str, long j, long j2) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.g.a(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i, String str, int i2) {
            if (b.this.g == null) {
                b.this.u.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.g.a(i, str, i2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i) {
            c cVar = b.this.c;
            if (cVar != null) {
                return cVar.onSdpExchange(b.this, str, i);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.InterfaceC0220c
        public void b() {
            b.this.a(111, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 0).a());
            b.this.a(260, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            return null;
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.i
        public void a() {
            int i;
            b.this.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 1);
            b.this.d.a(0);
            com.tencent.thumbplayer.tcmedia.adapter.b e = b.this.b.e();
            b.this.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_BITRATE_KBPS, Long.valueOf(((e.g() + e.f()) / 8) >> 10));
            b bVar = b.this;
            bVar.D = bVar.d.k();
            String str = e.a() + ProxyConfig.MATCH_ALL_SCHEMES + e.b();
            TPTrackInfo[] s = b.this.b.s();
            if (s != null) {
                i = 0;
                for (TPTrackInfo tPTrackInfo : s) {
                    if (tPTrackInfo.trackType == 2) {
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            b.this.a(103, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("playertype", Integer.valueOf(b.this.b.d())).a("definition", str).a("rate", Long.valueOf(e.f() / 8000)).a(TypedValues.TransitionType.S_DURATION, Long.valueOf(e.k())).a("fmt", e.c()).a("etime", Long.valueOf(System.currentTimeMillis())).a("multitrack", Boolean.valueOf(i > 1)).a());
            b.this.a(257, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.k
        public void b(int i, int i2) {
            b.this.a(277, i, i2, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.f
        public void a(int i, int i2, long j, long j2) {
            String g = b.this.d.g();
            b.this.u.c("onError playerErrorCodeStr=".concat(String.valueOf(g)));
            if (!TextUtils.isEmpty(g)) {
                try {
                    i2 = Integer.parseInt(g);
                    i = 4000;
                } catch (Exception e) {
                    b.this.u.a(e);
                }
            }
            b.this.a(i, i2);
            com.tencent.thumbplayer.tcmedia.e.a aVar = b.this.u;
            aVar.c("onError errorTypeReal=" + i + ", errorCodeReal=" + i2);
            e.a aVar2 = new e.a();
            aVar2.f10673a = j;
            aVar2.b = j2;
            b.this.a(262, i, i2, (Object) aVar2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            b.this.a(i, j, j2, obj);
            if (i == 1011) {
                b.this.a(obj);
            } else if (i != 1012) {
                Object valueOf = i == 4 ? Long.valueOf(b.this.b(((Long) obj).longValue(), "async call select track")) : obj;
                e.a aVar = new e.a();
                aVar.f10673a = j;
                aVar.b = j2;
                aVar.c = valueOf;
                b.this.a(261, i, 0, (Object) aVar);
            } else {
                b.this.b(obj);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.p
        public void a(long j, long j2) {
            e.a aVar = new e.a();
            aVar.f10673a = j;
            aVar.b = j2;
            b.this.a(264, 0, 0, (Object) aVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onAudioFrameOut(b.this, tPAudioFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onDetailInfo(b.this, tPPlayerDetailInfo);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            b.this.a(265, 0, 0, (Object) tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            b.this.a(279, 0, 0, (Object) tPSubtitleFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            c cVar = b.this.c;
            if (cVar != null) {
                cVar.onVideoFrameOut(b.this, tPVideoFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.d
        public void d() {
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        F = sparseIntArray;
        sparseIntArray.put(106, 1005);
        sparseIntArray.put(105, 1006);
    }

    public b(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(long j, String str) {
        if (!this.z.containsKey(Long.valueOf(j))) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
            aVar.e(str + ", invalid uniqueId");
            return -1L;
        }
        long longValue = this.z.get(Long.valueOf(j)).longValue();
        com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
        aVar2.c(str + ", convert uniqueId(" + j + ") => opaque(" + longValue + ")");
        return longValue;
    }

    private void d() {
        this.b.k();
        a(107, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.d.a(5);
        this.d.h();
        this.r = -1L;
        this.s = -1L;
        this.t = -1L;
    }

    private boolean h() {
        int b = this.b.b();
        return b == 4 || b == 5 || b == 6 || b == 7;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "addAudioTrackSource, url:" + str + ", name:" + str2);
        addAudioTrackSource(str, str2, null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(c = true)
    public void addSubtitleSource(String str, String str2, String str3) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "addSubtitleSource, url:" + str + ", mimeType:" + str2 + ", name:" + str3);
        addSubtitleSource(str, str2, str3, null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(a = true)
    public void captureVideo(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "captureVideo, params:" + tPCaptureParams + ", captureCallBack:" + tPCaptureCallBack);
        try {
            this.b.a(tPCaptureParams, tPCaptureCallBack);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void deselectTrack(int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "deselectTrack, trackIndex:" + i + ", opaque:" + j);
        try {
            this.b.b(i, j);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void enableTPAssetResourceLoader(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener, Looper looper) {
        if (iTPAssetResourceLoaderListener != null) {
            this.d.a(true);
            com.tencent.thumbplayer.tcmedia.c.a.a aVar = this.g;
            if (aVar != null) {
                aVar.c();
                this.g = null;
            }
            com.tencent.thumbplayer.tcmedia.c.a.b bVar = new com.tencent.thumbplayer.tcmedia.c.a.b(this.l.a(), looper);
            this.g = bVar;
            bVar.a(iTPAssetResourceLoaderListener);
            this.g.a();
            return;
        }
        this.d.a(false);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public int getBufferPercent() {
        if (this.b.n() == 0) {
            return 0;
        }
        return (int) ((((float) (this.b.p() - this.b.o())) * 100.0f) / ((float) this.b.n()));
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getCurrentPositionMs() {
        return this.b.o();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public int getCurrentState() {
        return this.b.b();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getDurationMs() {
        return this.b.n();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public ITPExtendReportController getExtendReportController() {
        return this.y;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getPdtTimeMs(long j) {
        TPDLProxyMsg.TPPDTInfo[] tPPDTInfoArr;
        TPDLProxyMsg.TPPDTInfo[] tPPDTInfoArr2;
        TPDLProxyMsg.TPPDTInfo[] tPPDTInfoArr3 = this.D;
        if (tPPDTInfoArr3 != null && tPPDTInfoArr3.length != 0) {
            if (j >= getDurationMs()) {
                return this.D[tPPDTInfoArr2.length - 1].pdtTimeEndMS;
            }
            if (j <= 0) {
                return this.D[0].pdtTimeStartMS;
            }
            for (TPDLProxyMsg.TPPDTInfo tPPDTInfo : this.D) {
                float f = tPPDTInfo.durationStart;
                if (j >= f * 1000.0f && j <= tPPDTInfo.durationEnd * 1000.0f) {
                    return Math.min(tPPDTInfo.pdtTimeStartMS + (j - (f * 1000.0f)), tPPDTInfo.pdtTimeEndMS);
                }
            }
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getPlayableDurationMs() {
        if (e()) {
            long j = this.s;
            if (j > 0) {
                long j2 = this.t;
                if (j2 > 0) {
                    return (long) (((j * 1.0d) / j2) * this.b.n());
                }
            }
            return this.r;
        }
        return this.b.p();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public ITPPlayerProxy getPlayerProxy() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public int getPlayerType() {
        return this.b.d();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getPositionMs(long j) {
        TPDLProxyMsg.TPPDTInfo[] tPPDTInfoArr = this.D;
        if (tPPDTInfoArr != null && tPPDTInfoArr.length != 0) {
            if (j >= tPPDTInfoArr[tPPDTInfoArr.length - 1].pdtTimeEndMS) {
                return getDurationMs();
            }
            if (j <= tPPDTInfoArr[0].pdtTimeStartMS) {
                return 0L;
            }
            for (TPDLProxyMsg.TPPDTInfo tPPDTInfo : tPPDTInfoArr) {
                long j2 = tPPDTInfo.pdtTimeStartMS;
                if (j >= j2 && j <= tPPDTInfo.pdtTimeEndMS) {
                    return Math.min((tPPDTInfo.durationStart * 1000.0f) + (j - j2), getDurationMs());
                }
            }
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public TPProgramInfo[] getProgramInfo() {
        return this.b.t();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public long getPropertyLong(int i) {
        return this.b.b(i);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public String getPropertyString(int i) {
        return this.b.c(i);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public ITPBusinessReportManager getReportManager() {
        com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b bVar = this.e;
        if (bVar == null) {
            return this.f;
        }
        return bVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public TPTrackInfo[] getTrackInfo() {
        return this.b.s();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public int getVideoHeight() {
        return this.b.r();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public int getVideoWidth() {
        return this.b.q();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void pause() {
        b bVar;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.b.j();
        try {
            bVar = this;
        } catch (Exception e) {
            e = e;
            bVar = this;
        }
        try {
            bVar.a(106, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            bVar.d.a(5);
        } catch (Exception e2) {
            e = e2;
            bVar.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void pauseDownload() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "pauseDownload");
        try {
            this.b.a(new TPOptionalParam().buildLong(502, 0L));
        } catch (Exception e) {
            this.u.a(e);
        }
        this.d.h();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void prepareAsync() {
        boolean z;
        b bVar;
        Map a2;
        String str = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        a(1003);
        this.u.c(f10667a + "prepareAsync");
        com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b bVar2 = this.e;
        if (bVar2 != null) {
            z = bVar2.c();
        } else {
            z = true;
        }
        g gVar = this.y;
        if (gVar != null) {
            gVar.a(z);
        }
        try {
            this.d.i();
            this.b.h();
        } catch (RuntimeException e) {
            this.u.a(e);
        }
        b(str);
        try {
            a2 = new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("url", this.m).a("p2p", Boolean.valueOf(e())).a("flowid", str).a();
            bVar = this;
        } catch (Exception e2) {
            e = e2;
            bVar = this;
        }
        try {
            bVar.a(102, 0, 0, (String) null, a2);
            g();
        } catch (Exception e3) {
            e = e3;
            bVar.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(a = true)
    public void release() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "release");
        this.b.m();
        a(112, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.c.a();
        this.d.e();
        this.q.clear();
        com.tencent.thumbplayer.tcmedia.c.a.a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.c();
            this.g = null;
        }
        this.r = -1L;
        this.s = -1L;
        this.t = -1L;
        o.a().a(this.i, this.k);
        this.i = null;
        this.k = null;
        this.h.c();
        g gVar = this.y;
        if (gVar != null) {
            gVar.b();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(a = true)
    public void reset() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "reset");
        if (this.x) {
            this.u.a(String.valueOf(this.w.incrementAndGet()));
            this.b.a(this.u.a());
            this.c.a(this.u.a().a());
        }
        this.b.l();
        a(113, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.d.d();
        this.p = -1;
        this.q.clear();
        com.tencent.thumbplayer.tcmedia.c.a.a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.b();
        }
        a aVar3 = this.k;
        if (aVar3 != null) {
            aVar3.removeCallbacksAndMessages(null);
        }
        this.r = -1L;
        this.s = -1L;
        this.t = -1L;
        this.n = true;
        this.o = false;
        this.B = 0;
        this.C = 0;
        this.z.clear();
        this.A = 0L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void resumeDownload() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "resumeDownload");
        this.d.i();
        try {
            this.b.a(new TPOptionalParam().buildLong(502, 1L));
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void seekTo(int i) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "seekTo, positionMs:" + i);
        this.b.a(i);
        this.d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void selectProgram(int i, long j) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "selectProgram, programIndex:" + i + ", opaque:" + j);
        try {
            this.b.c(i, j);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void selectTrack(int i, long j) {
        b bVar;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "selectTrack, trackIndex:" + i + ", opaque:" + j);
        try {
            long a2 = a(j, "selectTrack");
            TPTrackInfo[] s = this.b.s();
            if (s != null && s.length > i) {
                bVar = this;
                try {
                    bVar.a(122, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("opaque", Long.valueOf(a2)).a("tracktype", Integer.valueOf(s[i].getTrackType())).a("name", s[i].getName()).a("stime", Long.valueOf(System.currentTimeMillis())).a());
                } catch (Exception e) {
                    e = e;
                    bVar.u.a(e);
                    return;
                }
            } else {
                bVar = this;
            }
            bVar.b.a(i, a2);
        } catch (Exception e2) {
            e = e2;
            bVar = this;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true)
    public void setAudioGainRatio(float f) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setAudioGainRatio, gainRatio:" + f);
        try {
            this.b.a(f);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true)
    public void setAudioNormalizeVolumeParams(String str) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setAudioNormalizeVolumeParams, audioNormalizeVolumeParams:" + str);
        try {
            this.b.a(str);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        }
        if (this.b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
        a("", 4, false);
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setDataSource, AssetFileDescriptor");
        try {
            this.b.a(assetFileDescriptor);
        } catch (IOException | SecurityException e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setLoopback, isLoopback:" + z);
        try {
            this.b.b(z);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnAudioFrameOutputListener(ITPPlayerListener.IOnAudioFrameOutputListener iOnAudioFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnAudioFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnAudioProcessFrameOutputListener(ITPPlayerListener.IOnAudioProcessFrameOutputListener iOnAudioProcessFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnAudioProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnCompletionListener(ITPPlayerListener.IOnCompletionListener iOnCompletionListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnCompletionListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnDemuxerListener(ITPPlayerListener.IOnDemuxerListener iOnDemuxerListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnDemuxerListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnDetailInfoListener(ITPPlayerListener.IOnDetailInfoListener iOnDetailInfoListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnDetailInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnErrorListener(ITPPlayerListener.IOnErrorListener iOnErrorListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnErrorListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnInfoListener(ITPPlayerListener.IOnInfoListener iOnInfoListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnPlayerStateChangeListener(ITPPlayerListener.IOnStateChangeListener iOnStateChangeListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnStateChangeListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnPreparedListener(ITPPlayerListener.IOnPreparedListener iOnPreparedListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnPreparedListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnSeekCompleteListener(ITPPlayerListener.IOnSeekCompleteListener iOnSeekCompleteListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSeekCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnStopAsyncCompleteListener(ITPPlayerListener.IOnStopAsyncCompleteListener iOnStopAsyncCompleteListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnStopAsyncCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnSubtitleDataListener(ITPPlayerListener.IOnSubtitleDataListener iOnSubtitleDataListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSubtitleDataListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnSubtitleFrameOutListener(ITPPlayerListener.IOnSubtitleFrameOutListener iOnSubtitleFrameOutListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnSubtitleFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnVideoFrameOutListener(ITPPlayerListener.IOnVideoFrameOutListener iOnVideoFrameOutListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnVideoProcessFrameOutputListener(ITPPlayerListener.IOnVideoProcessFrameOutputListener iOnVideoProcessFrameOutputListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void setOnVideoSizeChangedListener(ITPPlayerListener.IOnVideoSizeChangedListener iOnVideoSizeChangedListener) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(iOnVideoSizeChangedListener);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true)
    public void setOutputMute(boolean z) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setOutputMute, isOutputMute:" + z);
        try {
            this.b.a(z);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true)
    public void setPlaySpeedRatio(float f) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setPlaySpeedRatio, speedRatio:" + f);
        try {
            this.d.a(f);
            this.b.b(f);
        } catch (Exception e) {
            this.u.a(e);
        }
        a(116, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("scene", Float.valueOf(f)).a());
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(c = true)
    public void setPlayerOptionalParam(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam.getParamType() == 7 && !j.a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject().objectValue)) {
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
            aVar.d("set object param failed, optional id:" + tPOptionalParam.getKey());
            return;
        }
        a(tPOptionalParam);
        this.d.a(tPOptionalParam);
        try {
            this.b.a(tPOptionalParam);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setRichMediaSynchronizer(ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        this.b.a(iTPRichMediaSynchronizer);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setSurface(Surface surface) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setSurface, surface:" + surface);
        try {
            this.b.a(surface);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setSurfaceHolder, SurfaceHolder:" + surfaceHolder);
        try {
            this.b.a(surfaceHolder);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(c = true)
    public void setVideoInfo(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo != null) {
            try {
                a(tPVideoInfo, this.B, this.C);
                this.d.a(tPVideoInfo);
                this.b.a(tPVideoInfo);
            } catch (Exception e) {
                this.u.a(e);
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void start() {
        b bVar;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "start");
        this.b.i();
        try {
            bVar = this;
        } catch (Exception e) {
            e = e;
            bVar = this;
        }
        try {
            bVar.a(104, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            bVar.d.a(0);
        } catch (Exception e2) {
            e = e2;
            bVar.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(a = true)
    public void stop() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "stop");
        d();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void stopAsync() {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "stopAsync");
        d();
        a(280, 0, 0, (Object) null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j + ", videoInfo:" + tPVideoInfo);
        switchDefinition(iTPMediaAsset, j, tPVideoInfo, 0);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    public void updateLoggerContext(com.tencent.thumbplayer.tcmedia.e.b bVar) {
        if (bVar != null) {
            this.x = false;
            this.u.a(new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPPlayer"));
            this.b.a(this.u.a());
            this.c.a(this.u.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void updateTaskInfo(String str, Object obj) {
        com.tencent.thumbplayer.tcmedia.c.a aVar = this.d;
        if (aVar != null) {
            aVar.a(str, obj);
        }
    }

    public b(Context context, Looper looper) {
        this(context, looper, null);
    }

    private int a(String str) {
        if (this.d.a()) {
            return 5;
        }
        return r.a(str);
    }

    private boolean e() {
        return this.d.f() && TPPlayerConfig.isUseP2P() && this.n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.d.a(this.b.c() ? 0 : 5);
    }

    private void g() {
        e.a aVar = new e.a();
        aVar.f10673a = e() ? 1L : 0L;
        a(261, 1009, 0, (Object) aVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2, TPDownloadParamData tPDownloadParamData) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "addAudioTrackSource, url:" + str + ", name:" + str2 + ", downloadParamData:" + tPDownloadParamData);
        if (TextUtils.isEmpty(str2) || !com.tencent.thumbplayer.tcmedia.utils.b.d(str)) {
            this.u.e("handleAddAudioSource, illegal argument.");
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            TPOptionalParam tPOptionalParam = new TPOptionalParam();
            if (tPDownloadParamData != null) {
                tPOptionalParam.buildObject(0, tPDownloadParamData);
            }
            arrayList.add(tPOptionalParam);
            this.b.a(str, (tPDownloadParamData == null || tPDownloadParamData.getUrlCdnidHttpHeaderList() == null || tPDownloadParamData.getUrlCdnidHttpHeaderList().isEmpty()) ? null : tPDownloadParamData.getUrlCdnidHttpHeaderList().get(0), str2, arrayList);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(c = true)
    public void addSubtitleSource(String str, String str2, String str3, TPDownloadParamData tPDownloadParamData) {
        b bVar;
        Exception exc;
        long currentTimeMillis;
        String a2;
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "addSubtitleSource, url:" + str + ", name:" + str3 + ", downloadParamData:" + tPDownloadParamData);
        try {
            currentTimeMillis = System.currentTimeMillis();
        } catch (Exception e) {
            e = e;
            bVar = this;
        }
        try {
            if (e()) {
                try {
                    if (com.tencent.thumbplayer.tcmedia.utils.b.d(str)) {
                        a2 = this.d.a(3, str, tPDownloadParamData);
                        this.q.add(a2);
                        this.b.a(a2, (tPDownloadParamData != null || tPDownloadParamData.getUrlCdnidHttpHeaderList() == null || tPDownloadParamData.getUrlCdnidHttpHeaderList().isEmpty()) ? null : tPDownloadParamData.getUrlCdnidHttpHeaderList().get(0), str2, str3);
                        bVar = this;
                        bVar.a(118, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(currentTimeMillis)).a("etime", Long.valueOf(System.currentTimeMillis())).a("url", str).a("name", str3).a());
                        return;
                    }
                } catch (Exception e2) {
                    exc = e2;
                    bVar = this;
                    bVar.u.a(exc);
                    return;
                }
            }
            bVar.a(118, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(currentTimeMillis)).a("etime", Long.valueOf(System.currentTimeMillis())).a("url", str).a("name", str3).a());
            return;
        } catch (Exception e3) {
            e = e3;
            exc = e;
            bVar.u.a(exc);
            return;
        }
        a2 = str;
        this.b.a(a2, (tPDownloadParamData != null || tPDownloadParamData.getUrlCdnidHttpHeaderList() == null || tPDownloadParamData.getUrlCdnidHttpHeaderList().isEmpty()) ? null : tPDownloadParamData.getUrlCdnidHttpHeaderList().get(0), str2, str3);
        bVar = this;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void seekTo(int i, int i2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "seekTo, positionMs:" + i + ", mode:" + i2);
        if (i2 > 0) {
            this.b.a(i, i2);
        } else {
            this.b.a(i);
        }
        this.d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setDataSource(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        }
        if (this.b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
        a("", 4, false);
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setDataSource, ParcelFileDescriptor");
        try {
            this.b.a(parcelFileDescriptor);
        } catch (IOException | SecurityException e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z, long j, long j2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setLoopback, isLoopback:" + z + ", loopStartPositionMs:" + j + ", loopEndPositionMs:" + j2);
        try {
            this.b.a(z, j, j2);
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo, int i) {
        if (!h()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j + ", videoInfo:" + tPVideoInfo + ", mode:" + i);
        TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
        if (e()) {
            iTPMediaAsset = this.d.a(iTPMediaAsset, j, a2);
        }
        if (iTPMediaAsset != null) {
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.c("handleSwitchDef, proxyMediaAsset:" + iTPMediaAsset + ", defID:" + j);
            this.b.b(a2);
            this.b.a(iTPMediaAsset, 0, j);
            a(120, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("switch", String.valueOf(j)).a());
        }
    }

    public b(Context context, Looper looper, Looper looper2) {
        this(context, looper, looper2, null);
    }

    private long a(long j, String str) {
        this.z.put(Long.valueOf(this.A), Long.valueOf(j));
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(str + ", convert opaque(" + j + ") => uniqueId(" + this.A + ")");
        long j2 = this.A;
        this.A = 1 + j2;
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            com.tencent.thumbplayer.tcmedia.adapter.a aVar = this.b;
            if (aVar != null) {
                aVar.f();
            }
        } catch (Exception e) {
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.e("reopenPlayer has exception:" + e.toString());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setDataSource(ITPMediaAsset iTPMediaAsset) {
        if (iTPMediaAsset == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        }
        if (iTPMediaAsset instanceof ITPMediaDRMAsset) {
            ITPMediaDRMAsset iTPMediaDRMAsset = (ITPMediaDRMAsset) iTPMediaAsset;
            if (iTPMediaDRMAsset.getDrmAllProperties() == null || iTPMediaDRMAsset.getDrmAllProperties().isEmpty()) {
                throw new IllegalArgumentException("error : setDataSource , drm property is null");
            }
            if (iTPMediaDRMAsset.getDrmType() == 0 && e()) {
                byte[] a2 = a(TPPlayerConfig.getProxyDataDir(), iTPMediaDRMAsset.getDrmPlayUrl(), iTPMediaDRMAsset.getDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_LICENSE_URL, ""));
                if (a2 != null && a2.length > 0) {
                    try {
                        iTPMediaDRMAsset.setOfflineKeySetId(Base64.encodeToString(a2, 2));
                    } catch (Exception e) {
                        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
                        aVar.c("setOfflineKeySetId exception" + e.getMessage());
                    }
                }
            }
            if (TextUtils.isEmpty(iTPMediaDRMAsset.getUrl())) {
                throw new IllegalArgumentException("error : setDataSource , drm asset url is null");
            }
        }
        if (this.b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
        a(iTPMediaAsset.getUrl(), a(iTPMediaAsset.getUrl()), e());
        a(1000);
        com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
        aVar2.c(f10667a + "setDataSource, ITPMediaAsset");
        this.m = iTPMediaAsset.getUrl();
        if (e()) {
            iTPMediaAsset = this.d.a(iTPMediaAsset);
            updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.u;
        aVar3.c("handleSetDataSource mediaAsset=" + iTPMediaAsset.getUrl());
        try {
            this.b.a(iTPMediaAsset);
        } catch (IOException | SecurityException e2) {
            this.u.a(e2);
        }
        a(1001);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, defUrl:" + str + ", defID:" + j);
        switchDefinition(str, j, tPVideoInfo, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Context context, Looper looper, Looper looper2, com.tencent.thumbplayer.tcmedia.e.b bVar) {
        com.tencent.thumbplayer.tcmedia.e.b bVar2;
        com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.c cVar;
        Looper looper3;
        this.m = null;
        this.n = true;
        this.o = false;
        this.p = -1;
        this.w = new AtomicInteger(1000);
        this.x = false;
        this.y = null;
        this.z = new HashMap();
        this.A = 0L;
        this.E = false;
        if (bVar != null) {
            bVar2 = new com.tencent.thumbplayer.tcmedia.e.b(bVar, "TPPlayer");
        } else {
            com.tencent.thumbplayer.tcmedia.e.b bVar3 = new com.tencent.thumbplayer.tcmedia.e.b("ThumbPlayer", String.valueOf(v.incrementAndGet()), String.valueOf(this.w.incrementAndGet()), "TPPlayer");
            this.x = true;
            bVar2 = bVar3;
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = new com.tencent.thumbplayer.tcmedia.e.a(bVar2);
        this.u = aVar;
        aVar.c("create TPPlayer");
        this.l = new com.tencent.thumbplayer.tcmedia.tplayer.a(context.getApplicationContext());
        this.h = new com.tencent.thumbplayer.tcmedia.tplayer.plugins.c();
        if (TPPlayerConfig.isDataReportEnable() && TPPlayerConfig.isPlayerReportEnable()) {
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b bVar4 = new com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.b(this.l.a());
            this.e = bVar4;
            cVar = bVar4;
        } else {
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.c cVar2 = new com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.c();
            this.f = cVar2;
            cVar = cVar2;
        }
        this.h.a(cVar);
        a(100, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        C0233b c0233b = new C0233b();
        this.c = new c(this.u.b());
        com.tencent.thumbplayer.tcmedia.adapter.a a2 = com.tencent.thumbplayer.tcmedia.adapter.e.a(bVar2, this.l);
        this.b = a2;
        a2.a((c.i) c0233b);
        a2.a((c.InterfaceC0220c) c0233b);
        a2.a((c.h) c0233b);
        a2.a((c.p) c0233b);
        a2.a((c.f) c0233b);
        a2.a((c.j) c0233b);
        a2.a((c.p) c0233b);
        a2.a((c.l) c0233b);
        a2.a((c.m) c0233b);
        a2.a((c.a) c0233b);
        a2.a((c.n) c0233b);
        a2.a((c.o) c0233b);
        a2.a((c.b) c0233b);
        a2.a((c.k) c0233b);
        a2.a((c.e) c0233b);
        a2.a((c.d) c0233b);
        if (looper == null || looper == Looper.getMainLooper()) {
            HandlerThread a3 = o.a().a("TP-workthread");
            this.i = a3;
            looper3 = a3.getLooper();
        } else {
            looper3 = looper;
        }
        this.j = looper3;
        this.k = looper2 == null ? Looper.myLooper() == null ? new a(this, this.j) : new a(this) : new a(this, looper2);
        a(101, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        com.tencent.thumbplayer.tcmedia.c.a a4 = com.tencent.thumbplayer.tcmedia.c.c.a(this.j, this.l);
        this.d = a4;
        a4.a(c0233b);
        this.h.a(new com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.a());
        this.q = new ArrayList<>();
        if (TPPlayerConfig.getNewReportEnable()) {
            g gVar = new g(this.l.a());
            this.y = gVar;
            gVar.a(new com.tencent.thumbplayer.tcmedia.common.a(a2));
            this.y.a();
            this.l.b().a(this.y);
        }
    }

    private TPDownloadParamData b(int i, int i2) {
        TPDownloadParamData tPDownloadParamData = new TPDownloadParamData(0);
        tPDownloadParamData.setStarTimeMS(i);
        tPDownloadParamData.setEndTimeMS(i2);
        return tPDownloadParamData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i) {
        a(new TPPlayerDetailInfo(i));
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setDataSource(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        }
        if (this.b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
        a(str, a(str), e());
        a(1000);
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setDataSource, url:" + str);
        this.m = str;
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        this.u.c("handleSetDataSource originalUrl=".concat(String.valueOf(str)));
        if (e()) {
            eVar = this.d.a(str, (Map<String, String>) null);
            updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.u;
            aVar3.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
        }
        this.b.a(eVar);
        a(1001);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, int i) {
        String str2;
        long j2;
        if (!h()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", mode:" + i);
        TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        if (e()) {
            str2 = str;
            j2 = j;
            eVar = this.d.a(j2, str2, a2, null);
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.u;
            aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
        } else {
            str2 = str;
            j2 = j;
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar4 = this.u;
        aVar4.c("switchDefinition, proxyUrl:" + str2 + ", defID:" + j2);
        this.b.b(a2);
        this.b.a(eVar, i, j2);
        a(120, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("switch", String.valueOf(j2)).a());
    }

    public String b() {
        return this.u.b();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b
    public void setDataSource(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        }
        if (this.b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.b.b());
        }
        a(str, a(str), e());
        a(1000);
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "setDataSource, url:" + str + ", httpHeader:" + map);
        this.m = str;
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        this.u.c("handleSetDataSource originalUrl=".concat(String.valueOf(str)));
        if (e()) {
            eVar = this.d.a(str, map);
            updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.u;
            aVar3.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
        }
        this.b.a(eVar, map);
        a(1001);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", videoInfo:" + tPVideoInfo + ", httpHeader:" + map);
        switchDefinition(str, j, tPVideoInfo, map, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        int i2 = F.get(i, -1);
        if (i2 == -1) {
            return;
        }
        c(i2);
    }

    public Looper a() {
        return this.j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(String str, long j, TPVideoInfo tPVideoInfo, Map<String, String> map, int i) {
        if (!h()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c(f10667a + "switchDefinition, defUrl:" + str + ", defID:" + j + ", httpHeader:" + map + ", mode:" + i);
        TPVideoInfo a2 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.C);
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        if (e()) {
            eVar = this.d.a(j, str, a2, map);
            com.tencent.thumbplayer.tcmedia.e.a aVar2 = this.u;
            aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.tcmedia.e.a aVar3 = this.u;
            aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
        }
        com.tencent.thumbplayer.tcmedia.e.a aVar4 = this.u;
        aVar4.c("switchDefinition, proxyUrl:" + str + ", defID:" + j + ", httpHeader:" + map);
        this.b.b(a2);
        this.b.a(eVar, map, i, j);
        a(120, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("switch", String.valueOf(j)).a());
    }

    private TPVideoInfo a(TPVideoInfo tPVideoInfo, int i, int i2) {
        com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
        aVar.c("updateStartAndSkipEndTimeMsForDownloadParam, startTimeMs:" + i + ", skipEndTimeMs:" + i2);
        if (tPVideoInfo == null) {
            return new TPVideoInfo.Builder().downloadParam(b(i, i2)).build();
        }
        ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
        if (downloadPraramList == null || downloadPraramList.isEmpty()) {
            tPVideoInfo.getBuilder().downloadParam(b(i, i2)).build();
            return tPVideoInfo;
        }
        int size = downloadPraramList.size();
        int i3 = 0;
        while (i3 < size) {
            TPDownloadParamData tPDownloadParamData = downloadPraramList.get(i3);
            i3++;
            TPDownloadParamData tPDownloadParamData2 = tPDownloadParamData;
            tPDownloadParamData2.setStarTimeMS(i);
            tPDownloadParamData2.setEndTimeMS(i2);
        }
        return tPVideoInfo;
    }

    private void a(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i) {
        a aVar = this.k;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = 1256;
            obtainMessage.obj = new TPPlayerDetailInfo(i);
            this.k.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj) {
        TPDownloadParamData tPDownloadParamData;
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!e()) {
                this.u.c("handleAudioTrackProxy, proxy not enable and use orinal url");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    tPDownloadParamData = null;
                    break;
                }
                TPOptionalParam next = it.next();
                if (next.getKey() == 0) {
                    tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                    break;
                }
            }
            String a2 = this.d.a(2, tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData);
            this.q.add(a2);
            tPAudioTrackInfo.proxyUrl = a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        com.tencent.thumbplayer.tcmedia.utils.g a2 = new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 3);
        a(108, i, i2, "", a2.a("code", i + "." + i2).a());
        this.d.a(3);
        this.d.h();
    }

    private void b(String str) {
        b.p pVar = new b.p();
        pVar.a(str);
        this.l.b().a(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, Object obj) {
        a aVar = this.k;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.k.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, String str, Object obj) {
        try {
            com.tencent.thumbplayer.tcmedia.tplayer.plugins.b bVar = this.h;
            if (bVar != null) {
                bVar.a(i, i2, i3, str, obj);
            }
        } catch (Exception e) {
            this.u.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, Object obj) {
        if (i == 200) {
            this.d.a(4);
            a(114, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("ptime", Long.valueOf(getCurrentPositionMs())).a("url", this.m).a());
        } else if (i == 201) {
            f();
            a(115, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i == 3) {
            long longValue = obj instanceof Long ? ((Long) obj).longValue() : -1L;
            this.u.c("switch definition finish defId:".concat(String.valueOf(longValue)));
            if (longValue > 0) {
                this.d.a(longValue);
            }
            a(121, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("switch", String.valueOf(longValue)).a());
        } else if (i == 106) {
            a(105, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i == 501) {
            a(117, 0, 0, (String) null, obj);
        } else if (i == 107) {
            a(119, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i == 4) {
            a(123, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("opaque", obj).a("etime", Long.valueOf(System.currentTimeMillis())).a("code", String.valueOf(j2)).a());
        } else if (i == 101) {
            a(124, 0, 0, (String) null, new com.tencent.thumbplayer.tcmedia.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i == 505 && (obj instanceof TPPlayerMsg.TPMediaDrmInfo)) {
            TPPlayerMsg.TPMediaDrmInfo tPMediaDrmInfo = (TPPlayerMsg.TPMediaDrmInfo) obj;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
            aVar.c("TPMediaDrmInfo secureDecoder:" + tPMediaDrmInfo.supportSecureDecoder + " secureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName:" + tPMediaDrmInfo.componentName + " drmType:" + tPMediaDrmInfo.drmType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        Object obj = message.obj;
        if (obj instanceof TPPlayerDetailInfo) {
            a((TPPlayerDetailInfo) obj);
        }
    }

    private void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam == null) {
            return;
        }
        if (tPOptionalParam.getKey() == 205) {
            this.n = tPOptionalParam.getParamBoolean().value;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
            aVar.c("setPlayerOptionalParam, use p2p proxy, OPTION_ID_BEFORE_BOOLEAN_USE_PROXY=" + this.n);
        } else if (tPOptionalParam.getKey() == 508) {
            this.o = tPOptionalParam.getParamBoolean().value;
        } else if (tPOptionalParam.getKey() == 100) {
            this.B = (int) tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 500) {
            this.C = (int) tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 510) {
            TPCodecUtils.enableDrmL3(tPOptionalParam.getParamBoolean().value);
        }
    }

    private void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onDetailInfo(this, tPPlayerDetailInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        TPDownloadParamData tPDownloadParamData;
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!e()) {
                this.u.e("handleSelectAudioTrack, proxy is not enable");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            com.tencent.thumbplayer.tcmedia.e.a aVar = this.u;
            aVar.c("handleSelectAudioTrack, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
            if (TextUtils.isEmpty(tPAudioTrackInfo.audioTrackUrl)) {
                try {
                    this.d.b();
                    return;
                } catch (Exception e) {
                    this.u.a(e);
                    return;
                }
            }
            Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    tPDownloadParamData = null;
                    break;
                }
                TPOptionalParam next = it.next();
                if (next.getKey() == 0) {
                    tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                    break;
                }
            }
            this.d.a(tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData != null ? tPDownloadParamData.getAudioTrackKeyId() : "");
        }
    }

    private void a(String str, int i, boolean z) {
        b.u uVar = new b.u();
        uVar.a(str);
        uVar.b(i);
        uVar.a(z);
        this.l.b().a(uVar);
    }

    private byte[] a(String str, String str2, String str3) {
        com.tencent.thumbplayer.tcmedia.c.a aVar = this.d;
        if (aVar != null) {
            return aVar.a(str, str2, str3);
        }
        return null;
    }
}
