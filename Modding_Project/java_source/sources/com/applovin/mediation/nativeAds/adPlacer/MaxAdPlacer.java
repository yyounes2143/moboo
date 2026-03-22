package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.o2;
import com.applovin.impl.p2;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.u2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxAdPlacer implements p2.a {

    /* renamed from: a  reason: collision with root package name */
    private AppLovinSdkUtils.Size f3861a;
    private MaxNativeAdViewBinder b;
    private final o2 c;
    private final p2 d;
    private Listener e;
    protected final o logger;
    protected final k sdk;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i);

        void onAdRemoved(int i);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings) {
        this(maxAdPlacerSettings, k.o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, Collection collection) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Clearing trailing ads after position " + i);
        }
        this.c.a(collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Clearing all cached ads");
        }
        this.c.a();
        this.d.a();
    }

    public void clearAds() {
        a(this.c.b(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdPlacer.this.b();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i) {
        final Collection<Integer> e = this.c.e(i);
        if (!e.isEmpty()) {
            a(e, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdPlacer.this.a(i, e);
                }
            });
        }
        return e;
    }

    public void destroy() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.d.c();
    }

    public long getAdItemId(int i) {
        if (isFilledPosition(i)) {
            return -System.identityHashCode(this.c.a(i));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i, int i2) {
        boolean z;
        int i3;
        double d;
        int i4;
        if (isFilledPosition(i)) {
            AppLovinSdkUtils.Size size = this.f3861a;
            if (size != AppLovinSdkUtils.Size.ZERO) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                i3 = size.getWidth();
            } else {
                i3 = TXVodDownloadDataSource.QUALITY_360P;
            }
            int min = Math.min(i3, i2);
            u2 u2Var = (u2) this.c.a(i);
            if ("small_template_1".equalsIgnoreCase(u2Var.o0())) {
                if (z) {
                    i4 = this.f3861a.getHeight();
                } else {
                    i4 = 120;
                }
                return new AppLovinSdkUtils.Size(min, i4);
            } else if (MaxNativeAdView.MEDIUM_TEMPLATE_1.equalsIgnoreCase(u2Var.o0())) {
                if (z) {
                    d = this.f3861a.getWidth() / this.f3861a.getHeight();
                } else {
                    d = 1.2d;
                }
                return new AppLovinSdkUtils.Size(min, (int) (min / d));
            } else if (z) {
                return this.f3861a;
            } else {
                if (u2Var.l0() != null) {
                    View mainView = u2Var.l0().getMainView();
                    return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
                }
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i) {
        return this.c.b(i);
    }

    public int getAdjustedPosition(int i) {
        return this.c.c(i);
    }

    public int getOriginalPosition(int i) {
        return this.c.d(i);
    }

    public void insertItem(int i) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Inserting item at position: " + i);
        }
        this.c.f(i);
    }

    public boolean isAdPosition(int i) {
        return this.c.g(i);
    }

    public boolean isFilledPosition(int i) {
        return this.c.h(i);
    }

    public void loadAds() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Loading ads");
        }
        this.d.e();
    }

    public void moveItem(int i, int i2) {
        this.c.b(i, i2);
    }

    @Override // com.applovin.impl.p2.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.p2.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.p2.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.b("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.p2.a
    public void onNativeAdLoaded() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Native ad enqueued");
        }
        a();
    }

    public void removeItem(final int i) {
        List list;
        if (isFilledPosition(i)) {
            list = Collections.singletonList(Integer.valueOf(i));
        } else {
            list = Collections.EMPTY_LIST;
        }
        a(list, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdPlacer.this.a(i);
            }
        });
    }

    public void renderAd(int i, ViewGroup viewGroup) {
        MaxAd a2 = this.c.a(i);
        if (a2 == null) {
            if (o.a()) {
                this.logger.a("MaxAdPlacer", "An ad is not available for position: " + i);
                return;
            }
            return;
        }
        MaxNativeAdView l0 = ((u2) a2).l0();
        if (l0 != null) {
            if (o.a()) {
                this.logger.a("MaxAdPlacer", "Using pre-rendered ad at position: " + i);
            }
        } else if (this.b != null) {
            l0 = new MaxNativeAdView(this.b, viewGroup.getContext());
            if (this.d.a(l0, a2)) {
                if (o.a()) {
                    this.logger.a("MaxAdPlacer", "Rendered ad at position: " + i);
                }
            } else if (o.a()) {
                this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i);
            }
        } else if (o.a()) {
            this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i + ". If you're using a custom ad template, check that nativeAdViewBinder is set.");
            return;
        } else {
            return;
        }
        for (int childCount = viewGroup.getChildCount(); childCount >= 0; childCount--) {
            if (viewGroup.getChildAt(childCount) instanceof MaxNativeAdView) {
                viewGroup.removeViewAt(childCount);
            }
        }
        if (l0.getParent() != null) {
            ((ViewGroup) l0.getParent()).removeView(l0);
        }
        viewGroup.addView(l0, -1, -1);
    }

    public void setAdSize(int i, int i2) {
        this.f3861a = new AppLovinSdkUtils.Size(i, i2);
    }

    public void setListener(Listener listener) {
        this.e = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.b = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i, int i2) {
        this.c.c(i, i2);
        if (i != -1 && i2 != -1) {
            a();
        }
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.f3861a = AppLovinSdkUtils.Size.ZERO;
        k a2 = appLovinSdk.a();
        this.sdk = a2;
        o O = a2.O();
        this.logger = O;
        this.c = new o2(maxAdPlacerSettings);
        this.d = new p2(maxAdPlacerSettings, context, this);
        if (o.a()) {
            O.a("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Removing item at position: " + i);
        }
        this.c.i(i);
    }

    private void a() {
        int c;
        while (this.d.d() && (c = this.c.c()) != -1) {
            if (o.a()) {
                o oVar = this.logger;
                oVar.a("MaxAdPlacer", "Placing ad at position: " + c);
            }
            this.c.a(this.d.b(), c);
            Listener listener = this.e;
            if (listener != null) {
                listener.onAdLoaded(c);
            }
        }
    }

    private void a(Collection collection, Runnable runnable) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.d.a(this.c.a(((Integer) it.next()).intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.e != null) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                this.e.onAdRemoved(((Integer) it2.next()).intValue());
            }
        }
    }
}
