package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c extends com.mbridge.msdk.splash.manager.a {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements DyCountDownListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DyOption f9465a;

        public a(DyOption dyOption) {
            this.f9465a = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListener
        public void getCountDownValue(int i) {
            this.f9465a.setDyCountDownListener(i);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements DynamicViewBackListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.inter.a f9466a;
        final /* synthetic */ MBSplashView b;
        final /* synthetic */ com.mbridge.msdk.splash.common.c c;
        final /* synthetic */ DyOption d;

        public b(com.mbridge.msdk.splash.inter.a aVar, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, DyOption dyOption) {
            this.f9466a = aVar;
            this.b = mBSplashView;
            this.c = cVar;
            this.d = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewClicked(BaseRespData baseRespData) {
            com.mbridge.msdk.splash.middle.a aVar;
            CampaignEx campaignEx;
            com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl;
            MBSplashView mBSplashView = this.b;
            EAction eAction = null;
            if (mBSplashView != null && (splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl()) != null) {
                aVar = splashSignalCommunicationImpl.a();
            } else {
                aVar = null;
            }
            DyOption dyOption = this.d;
            if (dyOption != null) {
                campaignEx = dyOption.getCampaignEx();
            } else {
                campaignEx = null;
            }
            if (baseRespData instanceof SplashResData) {
                eAction = ((SplashResData) baseRespData).geteAction();
            }
            if (eAction != null) {
                int i = C0158c.f9467a[eAction.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4 && baseRespData != null && (baseRespData instanceof SplashResData)) {
                                SplashResData splashResData = (SplashResData) baseRespData;
                                if (splashResData.getBaseViewData() != null) {
                                    c.this.a(aVar, campaignEx, splashResData.getBaseViewData());
                                }
                            }
                        } else if (this.d != null) {
                            com.mbridge.msdk.click.c.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.d.getAdChoiceLink());
                        }
                    } else if (aVar != null) {
                        aVar.close();
                    }
                } else if (aVar != null) {
                    if (baseRespData != null) {
                        if (baseRespData instanceof SplashResData) {
                            SplashResData splashResData2 = (SplashResData) baseRespData;
                            if (splashResData2.getBaseViewData() != null) {
                                c.this.a(splashResData2.getBaseViewData(), aVar, campaignEx);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    aVar.a(campaignEx);
                }
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreateFail(com.mbridge.msdk.dycreator.error.a aVar) {
            MBSplashView mBSplashView = this.b;
            if (mBSplashView != null) {
                Context context = mBSplashView.getContext();
                if (context == null) {
                    context = com.mbridge.msdk.foundation.controller.c.m().d();
                }
                c.this.a(context, this.b, this.c, this.f9466a);
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreatedSuccess(View view) {
            com.mbridge.msdk.splash.inter.a aVar = this.f9466a;
            if (aVar != null) {
                if (view != null) {
                    aVar.a(view);
                } else {
                    aVar.onError("View render error.");
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.splash.manager.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C0158c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9467a;

        static {
            int[] iArr = new int[EAction.values().length];
            f9467a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9467a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9467a[EAction.NOTICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9467a[EAction.FEEDBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final c f9468a = new c(null);
    }

    public /* synthetic */ c(a aVar) {
        this();
    }

    public static c a() {
        return d.f9468a;
    }

    private c() {
    }

    @Override // com.mbridge.msdk.splash.manager.a
    public void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        DyOption build = new DyOption.Builder().campaignEx(cVar.b()).fileDirs(list).dyAdType(DyAdType.SPLASH).canSkip(cVar.m()).isScreenClick(cVar.f() == 1).isClickButtonVisible(cVar.c() == 0).isShakeVisible(cVar.i() == 1).isApkInfoVisible(cVar.a() == 0).isLogoVisible(cVar.e() == 1).shakeStrenght(cVar.j()).shakeTime(cVar.k()).orientation(cVar.g()).countDownTime(cVar.d()).adChoiceLink(t0.a(cVar.b())).build();
        mBSplashView.setDyCountDownListener(new a(build));
        DynamicViewCreator.getInstance().createDynamicView(build, new b(aVar, mBSplashView, cVar, build));
    }
}
