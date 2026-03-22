package com.tencent.thumbplayer.tcmedia.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPVideoInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.tcmedia.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.tcmedia.b.l;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyMsg;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.f;
import com.tencent.thumbplayer.tcmedia.utils.i;
import com.tencent.thumbplayer.tcmedia.utils.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes6.dex */
public class e implements com.tencent.thumbplayer.tcmedia.c.a, f.a, i.b {
    private static int g = -1;

    /* renamed from: a  reason: collision with root package name */
    private Context f10567a;
    private a b;
    private ITPDownloadProxy c;
    private b e;
    private ITPPlayListener f;
    private ArrayList<TPDownloadParamData> i;
    private String j;
    private int k;
    private TPVideoInfo l;
    private String m;
    private LinkedList<c> o;
    private HashMap<String, Integer> p;
    private long q;
    private long r;
    private m z;
    private int d = 0;
    private int h = g;
    private ITPPlayerProxyListener n = null;
    private boolean s = false;
    private boolean t = true;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private long x = 100000000;
    private boolean y = false;

    /* loaded from: classes6.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (e.this.f == null) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "handleMessage failed, mPlayListener is null and return");
                return;
            }
            int i = message.what;
            if (i != 4196) {
                if (i == 4197) {
                    e.this.h(message.arg1);
                    return;
                }
                switch (i) {
                    case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                        e.this.f.onDownloadFinish();
                        return;
                    case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                        e.this.f.onDownloadError(message.arg1, message.arg2, (String) message.obj);
                        return;
                    case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                        e.this.f.onDownloadCdnUrlUpdate((String) message.obj);
                        return;
                    case FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN /* 4100 */:
                        TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) message.obj;
                        e.this.f.onDownloadCdnUrlInfoUpdate(tPCDNURLInfo.url, tPCDNURLInfo.cdnIp, tPCDNURLInfo.uIp, tPCDNURLInfo.errorStr);
                        return;
                    case 4101:
                        e.this.f.onDownloadStatusUpdate(message.arg1);
                        return;
                    case 4102:
                        TPPlayerMsg.TPProtocolInfo tPProtocolInfo = (TPPlayerMsg.TPProtocolInfo) message.obj;
                        e.this.f.onDownloadProtocolUpdate(tPProtocolInfo.protocolName, tPProtocolInfo.protocolVersion);
                        return;
                    case 4103:
                        e.this.f.onDownloadCdnUrlExpired((Map) message.obj);
                        return;
                    case 4104:
                        C0223e c0223e = (C0223e) message.obj;
                        f fVar = (f) c0223e.f10572a;
                        c0223e.b.a(e.this.f.onPlayCallback(fVar.f10573a, fVar.b, fVar.c, fVar.d, fVar.e));
                        return;
                    case 4105:
                        C0223e c0223e2 = (C0223e) message.obj;
                        c0223e2.b.a(e.this.f.getPlayInfo(((Long) c0223e2.f10572a).longValue()));
                        return;
                    case 4106:
                        TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) message.obj;
                        e.this.f.onDownloadProgressUpdate((int) tPDownLoadProgressInfo.playableDurationMS, tPDownLoadProgressInfo.downloadSpeedKBps, tPDownLoadProgressInfo.currentDownloadSize, tPDownLoadProgressInfo.totalFileSize, tPDownLoadProgressInfo.extraInfo);
                        return;
                    case 4107:
                        C0223e c0223e3 = (C0223e) message.obj;
                        c0223e3.b.a(e.this.f.getPlayInfo((String) c0223e3.f10572a));
                        return;
                    default:
                        return;
                }
            }
            e.this.g(message.arg1);
        }
    }

    /* loaded from: classes6.dex */
    public class b implements ITPPlayListener {
        private b() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            return e.this.f.getAdvRemainTime();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i, String str) {
            return e.this.f.getContentType(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            return e.this.f.getCurrentPlayClipNo();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long[] getCurrentPlayOffset() {
            return e.this.f.getCurrentPlayOffset();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return e.this.f.getCurrentPosition();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i, String str) {
            return e.this.f.getDataFilePath(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i, String str) {
            return e.this.f.getDataTotalSize(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j) {
            com.tencent.thumbplayer.tcmedia.utils.e eVar = new com.tencent.thumbplayer.tcmedia.utils.e();
            C0223e c0223e = new C0223e();
            c0223e.f10572a = Long.valueOf(j);
            c0223e.b = eVar;
            e.this.a(4105, c0223e);
            return e.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            return e.this.f.getPlayerBufferLength();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            e.this.a(4103, map);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            tPCDNURLInfo.errorStr = str4;
            e.this.a((int) FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN, tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            e.this.a((int) FragmentTransaction.TRANSIT_FRAGMENT_FADE, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i, int i2, String str) {
            e.this.a(InputDeviceCompat.SOURCE_TOUCHSCREEN, i, i2, str, false, false, 0L);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            e.this.a((int) FragmentTransaction.TRANSIT_FRAGMENT_OPEN, (Object) null);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = i;
            tPDownLoadProgressInfo.downloadSpeedKBps = i2;
            tPDownLoadProgressInfo.currentDownloadSize = j;
            tPDownLoadProgressInfo.totalFileSize = j2;
            tPDownLoadProgressInfo.extraInfo = str;
            e.this.a(4106, tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            e.this.a(4102, tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i) {
            e.this.a(4101, i, 0, null, false, false, 0L);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            f fVar = new f();
            fVar.f10573a = i;
            fVar.b = obj;
            fVar.c = obj2;
            fVar.d = obj3;
            fVar.e = obj4;
            com.tencent.thumbplayer.tcmedia.utils.e eVar = new com.tencent.thumbplayer.tcmedia.utils.e();
            C0223e c0223e = new C0223e();
            c0223e.f10572a = fVar;
            c0223e.b = eVar;
            e.this.a(4104, c0223e);
            return e.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i, String str, long j, long j2) {
            return e.this.f.onReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i, String str, long j, long j2) {
            return e.this.f.onStartReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i, String str, int i2) {
            return e.this.f.onStopReadData(i, str, i2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            com.tencent.thumbplayer.tcmedia.utils.e eVar = new com.tencent.thumbplayer.tcmedia.utils.e();
            C0223e c0223e = new C0223e();
            c0223e.f10572a = str;
            c0223e.b = eVar;
            e.this.a(4107, c0223e);
            return e.this.a(eVar);
        }
    }

    /* loaded from: classes6.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        long f10570a;
        int b;

        public c(long j, int i) {
            this.f10570a = j;
            this.b = i;
        }
    }

    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f10571a;
        int b;

        public d(int i, int i2) {
            this.f10571a = i;
            this.b = i2;
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.c.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0223e {

        /* renamed from: a  reason: collision with root package name */
        Object f10572a;
        com.tencent.thumbplayer.tcmedia.utils.e b;

        private C0223e() {
        }
    }

    /* loaded from: classes6.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        int f10573a;
        Object b;
        Object c;
        Object d;
        Object e;

        private f() {
        }
    }

    public e(Context context, Looper looper) {
        this.f10567a = context;
        this.b = new a(looper);
        com.tencent.thumbplayer.tcmedia.utils.f.a(this);
        com.tencent.thumbplayer.tcmedia.utils.i.a().a(this);
        this.e = new b();
        this.f = new com.tencent.thumbplayer.tcmedia.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        this.p = new HashMap<>();
        this.i = new ArrayList<>();
        this.z = new m();
    }

    private int a(List<ITPMediaTrackClip> list, String str, ArrayList<TPDownloadParamData> arrayList) {
        int startClipPlay;
        int i = -1;
        if (com.tencent.thumbplayer.tcmedia.utils.b.a(list)) {
            TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "clipList is empty, return");
            return -1;
        }
        int size = list.size();
        HashMap hashMap = new HashMap();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            ITPMediaTrackClip iTPMediaTrackClip = list.get(i3);
            if ((iTPMediaTrackClip instanceof com.tencent.thumbplayer.tcmedia.b.h) && com.tencent.thumbplayer.tcmedia.utils.b.d(((com.tencent.thumbplayer.tcmedia.b.h) iTPMediaTrackClip).getFilePath())) {
                hashMap.put(iTPMediaTrackClip, new d(i2, i3));
                i2++;
            }
        }
        if (com.tencent.thumbplayer.tcmedia.utils.b.a(hashMap)) {
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "all urls is local file url, return");
            return -1;
        }
        try {
            startClipPlay = this.c.startClipPlay(str, hashMap.size(), this.e);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (startClipPlay <= 0) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start clip play failed, cause : playId < 0");
                return startClipPlay;
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                ITPMediaTrackClip iTPMediaTrackClip2 = (ITPMediaTrackClip) entry.getKey();
                d dVar = (d) entry.getValue();
                if (iTPMediaTrackClip2 instanceof com.tencent.thumbplayer.tcmedia.b.h) {
                    com.tencent.thumbplayer.tcmedia.b.h hVar = (com.tencent.thumbplayer.tcmedia.b.h) iTPMediaTrackClip2;
                    TPDownloadParamData a2 = a(arrayList, dVar.b);
                    if (a2 == null) {
                        TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "fatal err, paramData is null.");
                        return -1;
                    }
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "multi trackClipIndex:" + dVar.b + ", download seq:" + dVar.f10571a + ", clip.url:" + hVar.getUrl() + ", clip.getFilePath:" + hVar.getFilePath() + ", paramData.savePath:" + a2.getSavePath() + ", paramData.DownloadFileID:" + a2.getDownloadFileID());
                    if (this.c.setClipInfo(startClipPlay, dVar.f10571a, a2.getDownloadFileID(), a(hVar.getFilePath(), a2, hVar.getHttpHeader(), s()))) {
                        hVar.a(this.c.getClipPlayUrl(startClipPlay, dVar.f10571a, 1));
                    }
                }
            }
            return startClipPlay;
        } catch (Throwable th2) {
            th = th2;
            i = startClipPlay;
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return i;
        }
    }

    private ITPMediaAsset b(ITPMediaAsset iTPMediaAsset) {
        List<ITPMediaTrackClip> c2 = c(iTPMediaAsset);
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(c2)) {
            this.k = a(c2, q(), this.i);
            m();
            n();
        }
        return iTPMediaAsset;
    }

    private List<ITPMediaTrackClip> c(ITPMediaAsset iTPMediaAsset) {
        ITPMediaTrack iTPMediaTrack;
        if (iTPMediaAsset instanceof com.tencent.thumbplayer.tcmedia.b.e) {
            List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.tcmedia.b.e) iTPMediaAsset).getAllAVTracks();
            if (com.tencent.thumbplayer.tcmedia.utils.b.a(allAVTracks) || (iTPMediaTrack = allAVTracks.get(0)) == null || com.tencent.thumbplayer.tcmedia.utils.b.a(iTPMediaTrack.getAllTrackClips())) {
                return null;
            }
            return iTPMediaTrack.getAllTrackClips();
        } else if (iTPMediaAsset instanceof ITPMediaTrack) {
            ITPMediaTrack iTPMediaTrack2 = (ITPMediaTrack) iTPMediaAsset;
            if (com.tencent.thumbplayer.tcmedia.utils.b.a(iTPMediaTrack2.getAllTrackClips())) {
                return null;
            }
            return iTPMediaTrack2.getAllTrackClips();
        } else if (iTPMediaAsset instanceof ITPMediaTrackClip) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            return arrayList;
        } else {
            return null;
        }
    }

    private String f(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return "onDownloadFinish";
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                return "onDownloadError";
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return "onDownloadCdnUrlUpdate";
            case FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN /* 4100 */:
                return "onDownloadCdnUrlInfoUpdate";
            case 4101:
                return "onDownloadStatusUpdate";
            case 4102:
                return "onDownloadProtocolUpdate";
            case 4103:
                return "onDownloadCdnUrlExpired";
            case 4104:
                return "onPlayCallback";
            case 4105:
            case 4107:
                return "getPlayInfo";
            case 4106:
                return "onDownloadProgressUpdate";
            default:
                return "unknown";
        }
    }

    private boolean l() {
        if (this.h == g) {
            this.h = TPPlayerConfig.getProxyServiceType();
        }
        com.tencent.thumbplayer.tcmedia.c.b a2 = i.a().a(this.h);
        if (a2 != null && a2.a() != null) {
            try {
                ITPDownloadProxy a3 = a2.a();
                this.c = a3;
                a3.setUserData("qq_is_vip", Boolean.valueOf(TPPlayerConfig.isUserIsVip()));
                if (!TextUtils.isEmpty(TPPlayerConfig.getUserUin())) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_UIN, TPPlayerConfig.getUserUin());
                }
                if (!TextUtils.isEmpty(TPPlayerConfig.getAppVersionName(this.f10567a))) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION, TPPlayerConfig.getAppVersionName(this.f10567a));
                }
                if (TPPlayerConfig.getBuildNumber(this.f10567a) != -1) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION_CODE, String.valueOf(TPPlayerConfig.getBuildNumber(this.f10567a)));
                }
                this.c.setUserData(TPDownloadProxyEnum.USER_UPC, TPPlayerConfig.getUserUpc());
                this.c.setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(TPPlayerConfig.getUserUpcState()));
                this.c.setUserData(TPDownloadProxyEnum.USER_EXTERNAL_NETWORK_IP, TPPlayerConfig.getOutNetIp());
                this.c.setUserData(TPDownloadProxyEnum.TAB_ABUSERID, TPPlayerConfig.getAbUserId());
                return true;
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
                return false;
            }
        }
        TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "initProxy failed, serviceType:" + this.h + ", playProxyManager:" + a2);
        return false;
    }

    private void m() {
        int i;
        try {
            ITPDownloadProxy iTPDownloadProxy = this.c;
            int i2 = this.k;
            if (this.t) {
                i = 101;
            } else {
                i = 100;
            }
            iTPDownloadProxy.setPlayState(i2, i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    private void n() {
        int i;
        int i2 = this.k;
        if (i2 > 0) {
            ITPDownloadProxy iTPDownloadProxy = this.c;
            if (!this.u && !this.v) {
                i = 0;
            } else {
                i = 1;
            }
            iTPDownloadProxy.updateTaskInfo(i2, TPDownloadProxyEnum.TASKINFO_ADAPTIVE_DYNAMIC_SWITCH, Integer.valueOf(i));
            this.c.updateTaskInfo(this.k, TPDownloadProxyEnum.TASKINFO_MAX_BITRATE, Long.valueOf(this.x));
            this.c.updateTaskInfo(this.k, TPDownloadProxyEnum.DLPARAM_MULTI_NETWORK, Integer.valueOf(this.w ? 1 : 0));
        }
    }

    private void o() {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "reset");
        this.j = "";
        this.m = "";
        this.l = null;
        this.q = 0L;
        this.r = 0L;
        this.s = false;
        this.t = true;
        this.u = false;
        this.v = false;
        this.w = false;
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.i)) {
            this.i.clear();
        }
        this.d = 0;
        this.h = g;
        this.c = null;
        this.x = 100000000L;
    }

    private boolean p() {
        int i;
        if (!TPPlayerConfig.isUseP2P()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "config set don't use download proxy!");
            return true;
        }
        if (this.d == 0) {
            if (l()) {
                i = 2;
            } else {
                i = 1;
            }
            this.d = i;
        }
        if (this.d == 1) {
            return true;
        }
        return false;
    }

    private String q() {
        return this.j;
    }

    private void r() {
        try {
            this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_START_TIME, Long.valueOf(this.q));
            this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(this.r));
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    private Map<String, Object> s() {
        int i;
        HashMap hashMap = new HashMap();
        if (!this.v && !this.u) {
            i = 0;
        } else {
            i = 1;
        }
        hashMap.put(TPDownloadProxyEnum.DLPARAM_ADAPTIVE_TYPE, Integer.valueOf(i));
        hashMap.put(TPDownloadProxyEnum.DLPARAM_MULTI_NETWORK, Integer.valueOf(this.w ? 1 : 0));
        return hashMap;
    }

    private void t() {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "inner event : release handler");
        this.z.writeLock().lock();
        a aVar = this.b;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
            this.b = null;
        }
        this.z.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void d() {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "stopDownload, playId:" + this.k);
        int i = this.k;
        if (i > 0) {
            e(i);
        }
        this.k = 0;
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
            Iterator<c> it = this.o.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    e(next.b);
                }
            }
            this.o.clear();
        }
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.p)) {
            for (Integer num : this.p.values()) {
                e(num.intValue());
            }
            this.p.clear();
        }
        o();
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void e() {
        d();
        com.tencent.thumbplayer.tcmedia.utils.i.a().b(this);
        com.tencent.thumbplayer.tcmedia.utils.f.b(this);
        t();
        this.n = null;
        this.f = new com.tencent.thumbplayer.tcmedia.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        this.e = null;
        this.c = null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public String g() {
        if (p()) {
            return null;
        }
        try {
            return this.c.getPlayErrorCodeStr(this.k);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void h() {
        if (p()) {
            return;
        }
        c(this.k);
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
            Iterator<c> it = this.o.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    c(next.b);
                }
            }
        }
        if (com.tencent.thumbplayer.tcmedia.utils.b.a(this.p)) {
            return;
        }
        for (Integer num : this.p.values()) {
            c(num.intValue());
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void i() {
        if (!p()) {
            d(this.k);
            if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
                Iterator<c> it = this.o.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next != null) {
                        d(next.b);
                    }
                }
            }
            if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.p)) {
                for (Integer num : this.p.values()) {
                    d(num.intValue());
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public ITPPlayerProxyListener j() {
        return this.n;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public TPDLProxyMsg.TPPDTInfo[] k() {
        ITPDownloadProxy iTPDownloadProxy;
        if (p() || (iTPDownloadProxy = this.c) == null) {
            return null;
        }
        return iTPDownloadProxy.getPDTInfos(this.k);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy
    public void pushEvent(int i) {
        if (p()) {
            return;
        }
        try {
            b(h.b(i));
        } catch (IllegalArgumentException e) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy
    public void setIsActive(boolean z) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setIsActive: ".concat(String.valueOf(z)));
        this.t = z;
        if (p()) {
            return;
        }
        m();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy
    public void setProxyServiceType(int i) {
        this.h = i;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy
    public void setTPPlayerProxyListener(ITPPlayerProxyListener iTPPlayerProxyListener) {
        this.n = iTPPlayerProxyListener;
    }

    private ITPMediaAsset b(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo) {
        List<ITPMediaTrackClip> c2 = c(iTPMediaAsset);
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(c2) && tPVideoInfo != null) {
            int a2 = a(c2, tPVideoInfo.getProxyFileID(), tPVideoInfo.getDownloadPraramList());
            if (a2 > 0) {
                this.o.offer(new c(j, a2));
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j + ",playId:" + a2);
                return iTPMediaAsset;
            }
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch clip def failed, cause : playId < 0");
        }
        return iTPMediaAsset;
    }

    private void c(int i) {
        try {
            this.c.pauseDownload(i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy pause download failed, taskId:".concat(String.valueOf(i)));
        }
    }

    private void d(int i) {
        try {
            this.c.resumeDownload(this.k);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy resume download failed, taskId:".concat(String.valueOf(i)));
        }
    }

    private void e(int i) {
        if (p()) {
            return;
        }
        try {
            this.c.stopPlay(i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy stop play failed, taskID:".concat(String.valueOf(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i) {
        int i2;
        switch (i) {
            case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                i2 = 13;
                break;
            case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                i2 = 14;
                break;
            default:
                return;
        }
        b(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i) {
        if (i == 1) {
            b(1);
            b(10);
        } else if (i == 2) {
            b(2);
            b(9);
        } else if (i != 3) {
        } else {
            b(2);
            b(10);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public com.tencent.thumbplayer.tcmedia.adapter.a.e a(long j, String str, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        if (tPVideoInfo == null) {
            return new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        }
        return a(j, str, (tPVideoInfo.getDownloadPraramList() == null || tPVideoInfo.getDownloadPraramList().size() <= 0) ? null : tPVideoInfo.getDownloadPraramList().get(0), map);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public boolean f() {
        return !p();
    }

    private com.tencent.thumbplayer.tcmedia.adapter.a.e a(long j, String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        if (com.tencent.thumbplayer.tcmedia.utils.b.d(str) && !p()) {
            if (this.o == null) {
                this.o = new LinkedList<>();
            }
            String str2 = null;
            TPDownloadParam a2 = tPDownloadParamData != null ? a(str, tPDownloadParamData, map, s()) : null;
            if (tPDownloadParamData != null) {
                try {
                    str2 = tPDownloadParamData.getDownloadFileID();
                } catch (Throwable th) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy switch def failed");
                }
            }
            int startPlay = this.c.startPlay(str2, a2, this.e);
            if (startPlay <= 0) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def failed, cause : playId <= 0");
                return eVar;
            }
            String playUrl = this.c.getPlayUrl(startPlay, 1);
            if (TextUtils.isEmpty(playUrl)) {
                playUrl = str;
            }
            eVar.b(playUrl);
            String playUrl2 = this.c.getPlayUrl(startPlay, 0);
            if (!TextUtils.isEmpty(playUrl2)) {
                str = playUrl2;
            }
            eVar.a(str);
            this.o.offer(new c(j, startPlay));
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j + ",playId:" + startPlay);
            return eVar;
        }
        return eVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void b() {
        if (p()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "stopRemuxer, download proxy init failed.");
            return;
        }
        if (this.s) {
            int i = this.k;
            if (i > 0) {
                e(i);
            }
            this.k = 0;
            a(this.m, (Map<String, String>) null);
        }
        this.s = false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public boolean c() {
        LinkedList<c> linkedList;
        return (p() || (linkedList = this.o) == null || linkedList.size() <= 0) ? false : true;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public com.tencent.thumbplayer.tcmedia.adapter.a.e a(String str, Map<String, String> map) {
        com.tencent.thumbplayer.tcmedia.adapter.a.e eVar = new com.tencent.thumbplayer.tcmedia.adapter.a.e(str);
        if (com.tencent.thumbplayer.tcmedia.utils.b.d(str) && !p()) {
            r();
            this.m = str;
            TPDownloadParamData a2 = a(this.i, 0);
            if (this.y && a2 != null && a2.getDlType() == 1) {
                a2 = new TPDownloadParamData(11);
            }
            TPDownloadParam a3 = a2 != null ? a(str, a2, map, s()) : null;
            try {
                StringBuilder sb = new StringBuilder("single url:");
                sb.append(str);
                sb.append(", paramData.savePath:");
                String str2 = AbstractJsonLexerKt.NULL;
                sb.append(a2 != null ? a2.getSavePath() : AbstractJsonLexerKt.NULL);
                sb.append(", paramData.DownloadFileID:");
                if (a2 != null) {
                    str2 = a2.getDownloadFileID();
                }
                sb.append(str2);
                TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", sb.toString());
                int startPlay = this.c.startPlay(q(), a3, this.e);
                if (startPlay > 0) {
                    String playUrl = this.c.getPlayUrl(startPlay, 0);
                    if (TextUtils.isEmpty(playUrl)) {
                        playUrl = str;
                    }
                    TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "startDownloadPlay, playId:".concat(String.valueOf(startPlay)));
                    eVar.b(playUrl);
                    String playUrl2 = this.c.getPlayUrl(startPlay, 1);
                    if (!TextUtils.isEmpty(playUrl2)) {
                        str = playUrl2;
                    }
                    eVar.a(str);
                    this.k = startPlay;
                    m();
                    n();
                    return eVar;
                }
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed, cause : playId <= 0");
                return eVar;
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy start play failed");
            }
        }
        return eVar;
    }

    public void b(int i) {
        if (p()) {
            return;
        }
        try {
            this.c.pushEvent(i);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th, "p2p proxy pushEvent failed, event:".concat(String.valueOf(i)));
        }
    }

    private void b(TPVideoInfo tPVideoInfo) {
        String str;
        if (p()) {
            return;
        }
        this.l = tPVideoInfo;
        if (tPVideoInfo == null || tPVideoInfo.getDownloadPraramList() == null) {
            str = "video or downloadParamList is null, return";
        } else if (this.k > 0) {
            try {
                ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
                for (int i = 0; i < downloadPraramList.size(); i++) {
                    TPDownloadParamData tPDownloadParamData = downloadPraramList.get(i);
                    if (!this.c.setClipInfo(this.k, tPDownloadParamData.getClipNo(), tPDownloadParamData.getDownloadFileID(), a(tPDownloadParamData.getUrl(), tPDownloadParamData, (Map<String, String>) null, s()))) {
                        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "setClipInfo failed, playID:" + this.k + ", clipNo:" + tPDownloadParamData.getClipNo() + ", downloadFileID:" + tPDownloadParamData.getDownloadFileID());
                    }
                }
                return;
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
                return;
            }
        } else {
            str = "p2p proxy not start, return";
        }
        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public ITPMediaAsset a(ITPMediaAsset iTPMediaAsset) {
        if (p()) {
            return iTPMediaAsset;
        }
        r();
        return iTPMediaAsset instanceof com.tencent.thumbplayer.tcmedia.b.j ? a((com.tencent.thumbplayer.tcmedia.b.j) iTPMediaAsset) : iTPMediaAsset instanceof l ? a((l) iTPMediaAsset) : b(iTPMediaAsset);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public ITPMediaAsset a(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo) {
        if (p() || iTPMediaAsset == null) {
            return iTPMediaAsset;
        }
        if (this.o == null) {
            this.o = new LinkedList<>();
        }
        return tPVideoInfo == null ? iTPMediaAsset : iTPMediaAsset instanceof ITPMediaDRMAsset ? a((ITPMediaDRMAsset) iTPMediaAsset, j, tPVideoInfo) : iTPMediaAsset instanceof l ? a((l) iTPMediaAsset, j, tPVideoInfo) : b(iTPMediaAsset, j, tPVideoInfo);
    }

    private ITPMediaAsset a(ITPMediaDRMAsset iTPMediaDRMAsset, long j, TPVideoInfo tPVideoInfo) {
        iTPMediaDRMAsset.setDrmPlayUrl(a(j, iTPMediaDRMAsset.getDrmPlayUrl(), (tPVideoInfo.getDownloadPraramList() == null || tPVideoInfo.getDownloadPraramList().size() <= 0) ? null : tPVideoInfo.getDownloadPraramList().get(0), iTPMediaDRMAsset.getHttpHeader()).b());
        return iTPMediaDRMAsset;
    }

    private boolean b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        hashMap.put(TPDownloadProxyEnum.DLPARAM_DATA_TRANSFER_MODE, 1);
        try {
            return this.c.setClipInfo(this.k, 2, str2, new TPDownloadParam(arrayList, 3, hashMap));
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            return false;
        }
    }

    private ITPMediaAsset a(com.tencent.thumbplayer.tcmedia.b.j jVar) {
        jVar.setDrmPlayUrl(a(jVar.getDrmPlayUrl(), jVar.getHttpHeader()).b());
        return jVar;
    }

    private ITPMediaAsset a(l lVar) {
        lVar.setStreamUrl(a(lVar.getStreamUrl(), lVar.getHttpHeader()).b());
        return lVar;
    }

    private ITPMediaAsset a(l lVar, long j, TPVideoInfo tPVideoInfo) {
        lVar.setStreamUrl(a(j, lVar.getStreamUrl(), tPVideoInfo, lVar.getHttpHeader()).b());
        return lVar;
    }

    private TPDownloadParamData a(ArrayList<TPDownloadParamData> arrayList, int i) {
        if (com.tencent.thumbplayer.tcmedia.utils.b.a(arrayList) || i >= arrayList.size()) {
            return null;
        }
        return arrayList.get(i);
    }

    private TPDownloadParam a(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map, Map<String, Object> map2) {
        return k.a(str, tPDownloadParamData, map, map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(com.tencent.thumbplayer.tcmedia.utils.e eVar) {
        try {
            return eVar.a(500L);
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "onPlayCallback getResult has exception:" + th.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public String a(int i, String str, TPDownloadParamData tPDownloadParamData) {
        String c2;
        TPDownloadParam tPDownloadParam;
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "return coz url is empty";
        } else if (!com.tencent.thumbplayer.tcmedia.utils.b.d(str)) {
            str2 = "return coz url is locol url, not need use proxy";
        } else if (!p()) {
            int i2 = 2;
            int i3 = 1;
            try {
                if (tPDownloadParamData != null) {
                    tPDownloadParam = k.a(str, tPDownloadParamData, null, null);
                    if (tPDownloadParamData.getTaskType() != 1) {
                        i2 = 1;
                    }
                    c2 = tPDownloadParamData.getDownloadFileID();
                    if (TextUtils.isEmpty(c2)) {
                        c2 = com.tencent.thumbplayer.tcmedia.utils.b.c(str);
                    }
                    i3 = i2;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    TPDownloadParam tPDownloadParam2 = new TPDownloadParam(arrayList, i == 2 ? 3 : 0, null);
                    c2 = com.tencent.thumbplayer.tcmedia.utils.b.c(str);
                    tPDownloadParam = tPDownloadParam2;
                }
                int startPlay = this.c.startPlay(c2, tPDownloadParam, this.e);
                if (startPlay <= 0) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed, cause : playId <= 0");
                    return str;
                }
                TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play, url type".concat(String.valueOf(i3)));
                String playUrl = this.c.getPlayUrl(startPlay, i3);
                this.p.put(playUrl, Integer.valueOf(startPlay));
                return playUrl;
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed:".concat(String.valueOf(th)));
                return str;
            }
        } else {
            str2 = "return coz download proxy init failed";
        }
        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", str2);
        return str;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(float f2) {
        if (p()) {
            return;
        }
        if (f2 <= 0.0f) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "set play speed ratio, value invalid:".concat(String.valueOf(f2)));
            return;
        }
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "set play speed value to proxy:".concat(String.valueOf(f2)));
        this.c.updateTaskInfo(this.k, TPDownloadProxyEnum.TASKINFO_SPEED_RATIO, Float.valueOf(f2));
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(int i) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState: ".concat(String.valueOf(i)));
        if (p()) {
            return;
        }
        try {
            this.c.setPlayState(this.k, i);
            if ((i == 5 || i == 0) && !com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
                Iterator<c> it = this.o.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next != null) {
                        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState definitionID:" + next.f10570a + ", taskID:" + next.b + ", state:" + i);
                        this.c.setPlayState(next.b, i);
                    }
                }
            }
        } catch (Throwable th) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "onNetworkStatusChanged oldNetStatus: " + i + ", netStatus: " + i2);
        a(4197, i2, 0, null, false, false, 0L);
    }

    @Override // com.tencent.thumbplayer.tcmedia.utils.f.a
    public void a(int i, int i2, int i3, Object obj) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "onEvent eventId: " + i + ", arg1: " + i2 + ", arg2: " + i3 + ", object" + obj);
        a(4196, i, 0, null, false, false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, Object obj, boolean z, boolean z2, long j) {
        StringBuilder sb;
        String str;
        this.z.readLock().lock();
        a aVar = this.b;
        if (aVar == null) {
            sb = new StringBuilder();
            sb.append(f(i));
            str = " , send failed , handler null";
        } else if (!z || obj != null) {
            if (z2) {
                aVar.removeMessages(i);
            }
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.b.sendMessageDelayed(obtainMessage, j);
            this.z.readLock().unlock();
        } else {
            sb = new StringBuilder();
            sb.append(f(i));
            str = ", send failed , params null";
        }
        sb.append(str);
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", sb.toString());
        this.z.readLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object obj) {
        a(i, 0, 0, obj, false, false, 0L);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(long j) {
        c cVar;
        if (p()) {
            return;
        }
        try {
            if (com.tencent.thumbplayer.tcmedia.utils.b.a(this.o)) {
                return;
            }
            c peek = this.o.peek();
            while (true) {
                cVar = peek;
                if (cVar == null || cVar.f10570a == j) {
                    break;
                }
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy definitionID:" + cVar.f10570a + ", taskID:" + cVar.b);
                e(cVar.b);
                this.o.removeFirst();
                peek = this.o.peek();
            }
            if (cVar != null) {
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy task id:" + cVar.b);
                e(this.k);
                this.k = cVar.b;
                m();
                n();
                this.o.remove(cVar);
            }
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e, "playerSwitchDefComplete exception");
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(long j, long j2) {
        ITPDownloadProxy iTPDownloadProxy;
        if (p() || (iTPDownloadProxy = this.c) == null) {
            return;
        }
        iTPDownloadProxy.switchToResolution(this.k, (int) j, (int) j2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(TPOptionalParam tPOptionalParam) {
        if (p() || tPOptionalParam == null) {
            return;
        }
        if (tPOptionalParam.getKey() == 100) {
            this.q = tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 500) {
            try {
                long j = tPOptionalParam.getParamLong().value;
                this.r = j;
                if (this.k > 0) {
                    this.c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(j));
                }
            } catch (Throwable th) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
            }
        } else if (tPOptionalParam.getKey() == 503) {
            this.x = tPOptionalParam.getParamLong().param1;
            n();
        } else if (tPOptionalParam.getKey() == 508) {
            this.u = tPOptionalParam.getParamBoolean().value;
            n();
        } else if (tPOptionalParam.getKey() == 504) {
            this.v = tPOptionalParam.getParamLong().value != 0;
            n();
        } else if (tPOptionalParam.getKey() == 509) {
            this.w = tPOptionalParam.getParamBoolean().value;
            n();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo == null) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, param is null ");
            return;
        }
        if (this.l != null) {
            b(tPVideoInfo);
        }
        this.l = tPVideoInfo;
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, enter");
        this.j = tPVideoInfo.getProxyFileID();
        if (!com.tencent.thumbplayer.tcmedia.utils.b.a(this.i)) {
            this.i.clear();
        }
        if (tPVideoInfo.getDownloadPraramList() == null || tPVideoInfo.getDownloadPraramList().size() <= 0) {
            return;
        }
        this.i.addAll(tPVideoInfo.getDownloadPraramList());
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(ITPPlayListener iTPPlayListener) {
        if (iTPPlayListener == null) {
            this.f = new com.tencent.thumbplayer.tcmedia.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        } else {
            this.f = iTPPlayListener;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(String str, Object obj) {
        ITPDownloadProxy iTPDownloadProxy = this.c;
        if (iTPDownloadProxy != null) {
            iTPDownloadProxy.updateTaskInfo(this.k, str, obj);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(String str, String str2) {
        if (!com.tencent.thumbplayer.tcmedia.utils.b.d(str) || TextUtils.isEmpty(str2)) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, audioTrackUrl:" + str + ", keyId:" + str2);
        } else if (p()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, download proxy init failed.");
        } else {
            if (this.s) {
                int i = this.k;
                if (i > 0) {
                    e(i);
                }
                this.k = 0;
                a(this.m, (Map<String, String>) null);
                if (!b(str, str2)) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                    return;
                }
            } else if (!b(str, str2)) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                return;
            }
            this.s = true;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public void a(boolean z) {
        this.y = z;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public boolean a() {
        return this.y;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a
    public byte[] a(String str, String str2, String str3) {
        ITPDownloadProxy iTPDownloadProxy;
        if (p() || (iTPDownloadProxy = this.c) == null) {
            return null;
        }
        return iTPDownloadProxy.getOfflineLicenseKeySetId(str, str2, str3);
    }
}
