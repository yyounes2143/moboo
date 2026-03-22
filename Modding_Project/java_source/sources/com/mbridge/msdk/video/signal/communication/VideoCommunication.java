package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VideoCommunication extends BaseVideoCommunication {
    public static final /* synthetic */ int j = 0;
    private Handler i = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9904a;
        final /* synthetic */ String b;

        public a(Object obj, String str) {
            this.f9904a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressBarOperate(this.f9904a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9905a;
        final /* synthetic */ String b;

        public a0(Object obj, String str) {
            this.f9905a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewRect(this.f9905a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9906a;
        final /* synthetic */ String b;

        public a1(Object obj, String str) {
            this.f9906a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUpdateFrame(this.f9906a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9907a;
        final /* synthetic */ String b;

        public a2(Object obj, String str) {
            this.f9907a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardUnitSetting(this.f9907a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9908a;
        final /* synthetic */ String b;

        public b(Object obj, String str) {
            this.f9908a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCurrentProgress(this.f9908a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9909a;
        final /* synthetic */ String b;

        public b0(Object obj, String str) {
            this.f9909a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeFromSuperView(this.f9909a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9910a;
        final /* synthetic */ String b;

        public b1(Object obj, String str) {
            this.f9910a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerMute(this.f9910a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9911a;
        final /* synthetic */ String b;

        public b2(Object obj, String str) {
            this.f9911a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getUnitSetting(this.f9911a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9912a;
        final /* synthetic */ String b;

        public c(Object obj, String str) {
            this.f9912a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoClickView(this.f9912a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9913a;
        final /* synthetic */ String b;

        public c0(Object obj, String str) {
            this.f9913a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendSubView(this.f9913a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9914a;
        final /* synthetic */ String b;

        public c1(Object obj, String str) {
            this.f9914a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoLocation(this.f9914a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9915a;
        final /* synthetic */ String b;

        public c2(Object obj, String str) {
            this.f9915a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getEncryptPrice(this.f9915a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9916a;
        final /* synthetic */ String b;

        public d(Object obj, String str) {
            this.f9916a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setScaleFitXY(this.f9916a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9917a;
        final /* synthetic */ String b;

        public d0(Object obj, String str) {
            this.f9917a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendViewTo(this.f9917a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9918a;
        final /* synthetic */ String b;

        public d1(Object obj, String str) {
            this.f9918a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUnmute(this.f9918a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9919a;
        final /* synthetic */ String b;

        public d2(Object obj, String str) {
            this.f9919a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeVideoOperte(this.f9919a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9920a;
        final /* synthetic */ String b;

        public e(Object obj, String str) {
            this.f9920a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.notifyCloseBtn(this.f9920a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9921a;
        final /* synthetic */ String b;

        public e0(Object obj, String str) {
            this.f9921a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendSubView(this.f9921a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9922a;
        final /* synthetic */ String b;

        public e1(Object obj, String str) {
            this.f9922a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerGetMuteState(this.f9922a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9923a;
        final /* synthetic */ String b;

        public e2(Object obj, String str) {
            this.f9923a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressOperate(this.f9923a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9924a;
        final /* synthetic */ String b;

        public f(Object obj, String str) {
            this.f9924a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.toggleCloseBtn(this.f9924a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9925a;
        final /* synthetic */ String b;

        public f0(Object obj, String str) {
            this.f9925a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendViewTo(this.f9925a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9926a;
        final /* synthetic */ String b;

        public f1(Object obj, String str) {
            this.f9926a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetSource(this.f9926a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9927a;
        final /* synthetic */ String b;

        public g(Object obj, String str) {
            this.f9927a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handlerH5Exception(this.f9927a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9928a;
        final /* synthetic */ String b;

        public g0(Object obj, String str) {
            this.f9928a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.statistics(this.f9928a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9929a;
        final /* synthetic */ String b;

        public g1(Object obj, String str) {
            this.f9929a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetRenderType(this.f9929a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9930a;
        final /* synthetic */ String b;

        public h(Object obj, String str) {
            this.f9930a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.isSystemResume(this.f9930a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9931a;
        final /* synthetic */ String b;

        public h0(Object obj, String str) {
            this.f9931a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.bringViewToFront(this.f9931a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class h1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9932a;
        final /* synthetic */ String b;

        public h1(Object obj, String str) {
            this.f9932a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.preloadSubPlayTemplateView(this.f9932a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9933a;
        final /* synthetic */ String b;

        public i(Object obj, String str) {
            this.f9933a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.readyStatus(this.f9933a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9934a;
        final /* synthetic */ String b;

        public i0(Object obj, String str) {
            this.f9934a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.hideView(this.f9934a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9935a;
        final /* synthetic */ String b;

        public i1(Object obj, String str) {
            this.f9935a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeAd(this.f9935a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9936a;
        final /* synthetic */ String b;

        public j(Object obj, String str) {
            this.f9936a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playVideoFinishOperate(this.f9936a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9937a;
        final /* synthetic */ String b;

        public j0(Object obj, String str) {
            this.f9937a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showView(this.f9937a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9938a;
        final /* synthetic */ String b;

        public j1(Object obj, String str) {
            this.f9938a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.broadcast(this.f9938a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9939a;
        final /* synthetic */ String b;

        public k(Object obj, String str) {
            this.f9939a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.init(this.f9939a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9940a;
        final /* synthetic */ String b;

        public k0(Object obj, String str) {
            this.f9940a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewBgColor(this.f9940a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9941a;
        final /* synthetic */ String b;

        public k1(Object obj, String str) {
            this.f9941a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.ivRewardAdsWithoutVideo(this.f9941a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9942a;
        final /* synthetic */ String b;

        public l(Object obj, String str) {
            this.f9942a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.openURL(this.f9942a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class l0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9943a;
        final /* synthetic */ String b;

        public l0(Object obj, String str) {
            this.f9943a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewAlpha(this.f9943a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class l1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9944a;
        final /* synthetic */ String b;

        public l1(Object obj, String str) {
            this.f9944a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setSubPlayTemplateInfo(this.f9944a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9945a;
        final /* synthetic */ String b;

        public m(Object obj, String str) {
            this.f9945a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showAlertView(this.f9945a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9946a;
        final /* synthetic */ String b;

        public m0(Object obj, String str) {
            this.f9946a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewScale(this.f9946a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class m1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9947a;
        final /* synthetic */ String b;

        public m1(Object obj, String str) {
            this.f9947a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewFireEvent(this.f9947a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9948a;
        final /* synthetic */ String b;

        public n(Object obj, String str) {
            this.f9948a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeWeb(this.f9948a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9949a;
        final /* synthetic */ String b;

        public n0(Object obj, String str) {
            this.f9949a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewAbove(this.f9949a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class n1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9950a;
        final /* synthetic */ String b;

        public n1(Object obj, String str) {
            this.f9950a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.soundOperate(this.f9950a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9951a;
        final /* synthetic */ String b;

        public o(Object obj, String str) {
            this.f9951a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getSDKInfo(this.f9951a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class o0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9952a;
        final /* synthetic */ String b;

        public o0(Object obj, String str) {
            this.f9952a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewBelow(this.f9952a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class o1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9953a;
        final /* synthetic */ String b;

        public o1(Object obj, String str) {
            this.f9953a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.increaseOfferFrequence(this.f9953a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9954a;
        final /* synthetic */ String b;

        public p(Object obj, String str) {
            this.f9954a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getFileInfo(this.f9954a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9955a;
        final /* synthetic */ String b;

        public p0(Object obj, String str) {
            this.f9955a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewAbove(this.f9955a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class p1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9956a;
        final /* synthetic */ String b;

        public p1(Object obj, String str) {
            this.f9956a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handleNativeObject(this.f9956a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9957a;
        final /* synthetic */ String b;

        public q(Object obj, String str) {
            this.f9957a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadads(this.f9957a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class q0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9958a;
        final /* synthetic */ String b;

        public q0(Object obj, String str) {
            this.f9958a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewBelow(this.f9958a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class q1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9959a;
        final /* synthetic */ String b;

        public q1(Object obj, String str) {
            this.f9959a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadingResourceStatus(this.f9959a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9960a;
        final /* synthetic */ String b;

        public r(Object obj, String str) {
            this.f9960a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reactDeveloper(this.f9960a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class r0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9961a;
        final /* synthetic */ String b;

        public r0(Object obj, String str) {
            this.f9961a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.triggerCloseBtn(this.f9961a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class r1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9962a;
        final /* synthetic */ String b;

        public r1(Object obj, String str) {
            this.f9962a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createNativeEC(this.f9962a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9963a;
        final /* synthetic */ String b;

        public s(Object obj, String str) {
            this.f9963a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reportUrls(this.f9963a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class s0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9964a;
        final /* synthetic */ String b;

        public s0(Object obj, String str) {
            this.f9964a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewLoad(this.f9964a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class s1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9965a;
        final /* synthetic */ String b;

        public s1(Object obj, String str) {
            this.f9965a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setCacheItem(this.f9965a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9966a;
        final /* synthetic */ String b;

        public t(Object obj, String str) {
            this.f9966a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createWebview(this.f9966a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class t0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9967a;
        final /* synthetic */ String b;

        public t0(Object obj, String str) {
            this.f9967a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewReload(this.f9967a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class t1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9968a;
        final /* synthetic */ String b;

        public t1(Object obj, String str) {
            this.f9968a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeCacheItem(this.f9968a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9969a;
        final /* synthetic */ String b;

        public u(Object obj, String str) {
            this.f9969a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createView(this.f9969a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class u0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9970a;
        final /* synthetic */ String b;

        public u0(Object obj, String str) {
            this.f9970a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoBack(this.f9970a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class u1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9971a;
        final /* synthetic */ String b;

        public u1(Object obj, String str) {
            this.f9971a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAllCache(this.f9971a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9972a;
        final /* synthetic */ String b;

        public v(Object obj, String str) {
            this.f9972a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.click(this.f9972a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class v0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9973a;
        final /* synthetic */ String b;

        public v0(Object obj, String str) {
            this.f9973a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoForward(this.f9973a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class v1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9974a;
        final /* synthetic */ String b;

        public v1(Object obj, String str) {
            this.f9974a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.clearAllCache(this.f9974a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9975a;
        final /* synthetic */ String b;

        public w(Object obj, String str) {
            this.f9975a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createPlayerView(this.f9975a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class w0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9976a;
        final /* synthetic */ String b;

        public w0(Object obj, String str) {
            this.f9976a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPlay(this.f9976a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class w1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9977a;
        final /* synthetic */ String b;

        public w1(Object obj, String str) {
            this.f9977a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCutout(this.f9977a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9978a;
        final /* synthetic */ String b;

        public x(Object obj, String str) {
            this.f9978a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createSubPlayTemplateView(this.f9978a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class x0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9979a;
        final /* synthetic */ String b;

        public x0(Object obj, String str) {
            this.f9979a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPause(this.f9979a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class x1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9980a;
        final /* synthetic */ String b;

        public x1(Object obj, String str) {
            this.f9980a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAppSetting(this.f9980a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9981a;
        final /* synthetic */ String b;

        public y(Object obj, String str) {
            this.f9981a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.destroyComponent(this.f9981a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class y0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9982a;
        final /* synthetic */ String b;

        public y0(Object obj, String str) {
            this.f9982a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerResume(this.f9982a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class y1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9983a;
        final /* synthetic */ String b;

        public y1(Object obj, String str) {
            this.f9983a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.videoOperate(this.f9983a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9984a;
        final /* synthetic */ String b;

        public z(Object obj, String str) {
            this.f9984a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getComponentOptions(this.f9984a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class z0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9985a;
        final /* synthetic */ String b;

        public z0(Object obj, String str) {
            this.f9985a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerStop(this.f9985a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class z1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f9986a;
        final /* synthetic */ String b;

        public z1(Object obj, String str) {
            this.f9986a = obj;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardSetting(this.f9986a, this.b);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendSubView(obj, str);
        } else {
            this.i.post(new c0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendViewTo(obj, str);
        } else {
            this.i.post(new d0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void bringViewToFront(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.bringViewToFront(obj, str);
        } else {
            this.i.post(new h0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void broadcast(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.broadcast(obj, str);
        } else {
            this.i.post(new j1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void clearAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.clearAllCache(obj, str);
        } else {
            this.i.post(new v1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void click(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.click(obj, str);
        } else {
            this.i.post(new v(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeAd(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeAd(obj, str);
        } else {
            this.i.post(new i1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeVideoOperte(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeVideoOperte(obj, str);
        } else {
            this.i.post(new d2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeWeb(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeWeb(obj, str);
            return;
        }
        this.i.post(new n(obj, str));
        com.mbridge.msdk.foundation.tools.o0.b("JS-Video-Brigde", "type" + str);
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createNativeEC(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createNativeEC(obj, str);
        } else {
            this.i.post(new r1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createPlayerView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createPlayerView(obj, str);
        } else {
            this.i.post(new w(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createSubPlayTemplateView(obj, str);
        } else {
            this.i.post(new x(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createView(obj, str);
        } else {
            this.i.post(new u(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createWebview(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createWebview(obj, str);
        } else {
            this.i.post(new t(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void destroyComponent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.destroyComponent(obj, str);
        } else {
            this.i.post(new y(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAllCache(obj, str);
        } else {
            this.i.post(new u1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAppSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAppSetting(obj, str);
        } else {
            this.i.post(new x1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getComponentOptions(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getComponentOptions(obj, str);
        } else {
            this.i.post(new z(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCurrentProgress(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCurrentProgress(obj, str);
        } else {
            this.i.post(new b(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCutout(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCutout(obj, str);
        } else {
            this.i.post(new w1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getEncryptPrice(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getEncryptPrice(obj, str);
        } else {
            this.i.post(new c2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getFileInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getFileInfo(obj, str);
        } else {
            this.i.post(new p(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardSetting(obj, str);
        } else {
            this.i.post(new z1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardUnitSetting(obj, str);
        } else {
            this.i.post(new a2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getSDKInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getSDKInfo(obj, str);
        } else {
            this.i.post(new o(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getUnitSetting(obj, str);
        } else {
            this.i.post(new b2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handleNativeObject(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handleNativeObject(obj, str);
        } else {
            this.i.post(new p1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handlerH5Exception(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handlerH5Exception(obj, str);
        } else {
            this.i.post(new g(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void hideView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.hideView(obj, str);
        } else {
            this.i.post(new i0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void increaseOfferFrequence(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.increaseOfferFrequence(obj, str);
        } else {
            this.i.post(new o1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void init(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.init(obj, str);
        } else {
            this.i.post(new k(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewAbove(obj, str);
        } else {
            this.i.post(new n0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewBelow(obj, str);
        } else {
            this.i.post(new o0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void isSystemResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.isSystemResume(obj, str);
        } else {
            this.i.post(new h(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.ivRewardAdsWithoutVideo(obj, str);
        } else {
            this.i.post(new k1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadads(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadads(obj, str);
        } else {
            this.i.post(new q(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadingResourceStatus(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadingResourceStatus(obj, str);
        } else {
            this.i.post(new q1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void notifyCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.i.post(new e(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendSubView(obj, str);
        } else {
            this.i.post(new e0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendViewTo(obj, str);
        } else {
            this.i.post(new f0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewAbove(obj, str);
        } else {
            this.i.post(new p0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewBelow(obj, str);
        } else {
            this.i.post(new q0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void openURL(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.openURL(obj, str);
        } else {
            this.i.post(new l(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playVideoFinishOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playVideoFinishOperate(obj, str);
        } else {
            this.i.post(new j(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerGetMuteState(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerGetMuteState(obj, str);
        } else {
            this.i.post(new e1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerMute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerMute(obj, str);
        } else {
            this.i.post(new b1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPause(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPause(obj, str);
        } else {
            this.i.post(new x0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPlay(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPlay(obj, str);
        } else {
            this.i.post(new w0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerResume(obj, str);
        } else {
            this.i.post(new y0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetRenderType(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetRenderType(obj, str);
        } else {
            this.i.post(new g1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetSource(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetSource(obj, str);
        } else {
            this.i.post(new f1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerStop(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerStop(obj, str);
        } else {
            this.i.post(new z0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUnmute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUnmute(obj, str);
        } else {
            this.i.post(new d1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUpdateFrame(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUpdateFrame(obj, str);
        } else {
            this.i.post(new a1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void preloadSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.preloadSubPlayTemplateView(obj, str);
        } else {
            this.i.post(new h1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressBarOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressBarOperate(obj, str);
        } else {
            this.i.post(new a(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressOperate(obj, str);
        } else {
            this.i.post(new e2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reactDeveloper(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reactDeveloper(obj, str);
        } else {
            this.i.post(new r(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void readyStatus(Object obj, String str) {
        com.mbridge.msdk.foundation.tools.o0.c("JS-Video-Brigde", "VIDEOBridge readyStatus");
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.readyStatus(obj, str);
        } else {
            this.i.post(new i(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeCacheItem(obj, str);
        } else {
            this.i.post(new t1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeFromSuperView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeFromSuperView(obj, str);
        } else {
            this.i.post(new b0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reportUrls(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reportUrls(obj, str);
        } else {
            this.i.post(new s(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setCacheItem(obj, str);
        } else {
            this.i.post(new s1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setScaleFitXY(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setScaleFitXY(obj, str);
        } else {
            this.i.post(new d(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setSubPlayTemplateInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setSubPlayTemplateInfo(obj, str);
        } else {
            this.i.post(new l1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewAlpha(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewAlpha(obj, str);
        } else {
            this.i.post(new l0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewBgColor(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewBgColor(obj, str);
        } else {
            this.i.post(new k0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewRect(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewRect(obj, str);
        } else {
            this.i.post(new a0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewScale(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewScale(obj, str);
        } else {
            this.i.post(new m0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showAlertView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showAlertView(obj, str);
        } else {
            this.i.post(new m(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoClickView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoClickView(obj, str);
        } else {
            this.i.post(new c(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoLocation(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoLocation(obj, str);
        } else {
            this.i.post(new c1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showView(obj, str);
        } else {
            this.i.post(new j0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void soundOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.soundOperate(obj, str);
        } else {
            this.i.post(new n1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void statistics(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.statistics(obj, str);
        } else {
            this.i.post(new g0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void toggleCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.i.post(new f(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void triggerCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.i.post(new r0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void videoOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.videoOperate(obj, str);
        } else {
            this.i.post(new y1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewFireEvent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewFireEvent(obj, str);
        } else {
            this.i.post(new m1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoBack(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoBack(obj, str);
        } else {
            this.i.post(new u0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoForward(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoForward(obj, str);
        } else {
            this.i.post(new v0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewLoad(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewLoad(obj, str);
        } else {
            this.i.post(new s0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewReload(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewReload(obj, str);
        } else {
            this.i.post(new t0(obj, str));
        }
    }
}
