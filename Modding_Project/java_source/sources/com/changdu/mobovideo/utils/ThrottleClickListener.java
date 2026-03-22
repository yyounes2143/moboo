package com.changdu.mobovideo.utils;

import android.view.View;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R'\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0007¢\u0006\u0002\b\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/changdu/mobovideo/utils/ThrottleClickListener;", "Landroid/view/View$OnClickListener;", "Landroid/view/View;", "v", "", "onClick", "(Landroid/view/View;)V", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/jvm/functions/Function1;", "block", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "interval", "Ljava/util/concurrent/TimeUnit;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/TimeUnit;", "unit", "Wwwwwwwwwwwwwwwwwwwwww", "lastClickTime", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ThrottleClickListener implements View.OnClickListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5671Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TimeUnit f5672Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5673Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Function1<? super View, Unit> f5674Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(@NotNull View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f5671Wwwwwwwwwwwwwwwwwwwwww > this.f5672Wwwwwwwwwwwwwwwwwwwwwww.toMillis(this.f5673Wwwwwwwwwwwwwwwwwwwwwwww)) {
            this.f5671Wwwwwwwwwwwwwwwwwwwwww = currentTimeMillis;
            this.f5674Wwwwwwwwwwwwwwwwwwwwwwwww.invoke(view);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
