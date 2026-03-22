package com.appsflyer.internal;

import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1rSDK;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@RequiresApi(33)
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0019\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u001c\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0017\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\u0015\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010(R \u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010\u001e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010,"}, d2 = {"Lcom/appsflyer/internal/AFf1wSDK;", "Lcom/appsflyer/internal/AFe1mSDK;", "", "Lcom/appsflyer/internal/AFe1rSDK;", "p0", "Ljava/util/concurrent/Executor;", "p1", "Lcom/appsflyer/internal/AFc1oSDK;", "p2", "Lcom/appsflyer/internal/AFc1hSDK;", "p3", "Lcom/appsflyer/internal/AFg1nSDK;", "p4", "Lcom/appsflyer/internal/AFf1eSDK;", "p5", "Lkotlin/Function1;", "Lcom/appsflyer/internal/AFe1uSDK;", "p6", "<init>", "(Lcom/appsflyer/internal/AFe1rSDK;Ljava/util/concurrent/Executor;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFg1nSDK;Lcom/appsflyer/internal/AFf1eSDK;Lkotlin/jvm/functions/Function1;)V", "", "AFAdRevenueData", "()J", "getRevenue", "()Lcom/appsflyer/internal/AFe1uSDK;", "getCurrencyIso4217Code", "()V", "", "getMonetizationNetwork", "()Z", "component3", "Ljava/util/concurrent/Executor;", "component4", "Lcom/appsflyer/internal/AFc1hSDK;", "getMediationNetwork", "component2", "Lcom/appsflyer/internal/AFe1rSDK;", "areAllFieldsValid", "Lcom/appsflyer/internal/AFg1nSDK;", "component1", "Lcom/appsflyer/internal/AFc1oSDK;", "equals", "Lkotlin/jvm/functions/Function1;", "toString", "Lcom/appsflyer/internal/AFf1eSDK;"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegisterTriggerTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegisterTriggerTask.kt\ncom/appsflyer/internal/components/queue/tasks/RegisterTriggerTask\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,169:1\n215#2,2:170\n*S KotlinDebug\n*F\n+ 1 RegisterTriggerTask.kt\ncom/appsflyer/internal/components/queue/tasks/RegisterTriggerTask\n*L\n163#1:170,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AFf1wSDK extends AFe1mSDK<Unit> {
    @NotNull
    public AFg1nSDK areAllFieldsValid;
    @NotNull
    public AFc1oSDK component1;
    @NotNull
    public AFe1rSDK component2;
    @NotNull
    public Executor component3;
    @NotNull
    public AFc1hSDK component4;
    @NotNull
    public Function1<AFe1uSDK, Unit> equals;
    @NotNull
    public AFf1eSDK toString;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AFa1uSDK implements OutcomeReceiver {
        private /* synthetic */ Ref.ObjectRef<AFe1uSDK> AFAdRevenueData;
        private /* synthetic */ CountDownLatch getCurrencyIso4217Code;
        private /* synthetic */ AFf1wSDK getRevenue;

        public AFa1uSDK(Ref.ObjectRef<AFe1uSDK> objectRef, CountDownLatch countDownLatch, AFf1wSDK aFf1wSDK) {
            this.AFAdRevenueData = objectRef;
            this.getCurrencyIso4217Code = countDownLatch;
            this.getRevenue = aFf1wSDK;
        }

        public final /* synthetic */ void onError(Throwable th) {
            AFf1wSDK.getMediationNetwork((Exception) th);
            this.getCurrencyIso4217Code.countDown();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.appsflyer.internal.AFe1uSDK, T] */
        public final void onResult(@NotNull Object obj) {
            this.AFAdRevenueData.element = AFe1uSDK.SUCCESS;
            AFLogger.INSTANCE.d(AFg1cSDK.PRIVACY_SANDBOX, "Privacy Sandbox trigger has been registered successfully. ", true);
            this.getCurrencyIso4217Code.countDown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AFf1wSDK(@NotNull AFe1rSDK aFe1rSDK, @NotNull Executor executor, @NotNull AFc1oSDK aFc1oSDK, @NotNull AFc1hSDK aFc1hSDK, @NotNull AFg1nSDK aFg1nSDK, @NotNull AFf1eSDK aFf1eSDK, @NotNull Function1<? super AFe1uSDK, Unit> function1) {
        super(AFe1pSDK.REGISTER_TRIGGER, new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, null);
        this.component2 = aFe1rSDK;
        this.component3 = executor;
        this.component1 = aFc1oSDK;
        this.component4 = aFc1hSDK;
        this.areAllFieldsValid = aFg1nSDK;
        this.toString = aFf1eSDK;
        this.equals = function1;
        if (aFe1rSDK instanceof AFe1rSDK.AFa1tSDK) {
            this.AFAdRevenueData.add(AFe1pSDK.CONVERSION);
        }
        if (this.component2 instanceof AFe1rSDK.AFa1uSDK) {
            this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
        }
        if (this.component2 instanceof AFe1rSDK.AFa1zSDK) {
            this.getCurrencyIso4217Code.add(AFe1pSDK.INAPP);
        }
    }

    public static final /* synthetic */ void getMediationNetwork(Throwable th) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.PRIVACY_SANDBOX;
        String message = th.getMessage();
        aFLogger.e(aFg1cSDK, "Error occurred: " + message, th, false, false, false, true);
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return 20000L;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        super.getCurrencyIso4217Code();
        AFe1uSDK aFe1uSDK = this.getMonetizationNetwork;
        if (aFe1uSDK != null) {
            this.equals.invoke(aFe1uSDK);
        }
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.appsflyer.internal.AFe1uSDK, T] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.appsflyer.internal.AFe1uSDK, T] */
    @Override // com.appsflyer.internal.AFe1mSDK
    @SuppressLint({"NewApi"})
    @NotNull
    public final AFe1uSDK getRevenue() {
        MeasurementManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = AFe1uSDK.FAILURE;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        try {
            Context context = this.component4.getMonetizationNetwork;
            if (context != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSystemService(androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) != null) {
                new AFj1cSDK(this.component1, null, 2, null);
                Uri.Builder buildUpon = Uri.parse(AFj1cSDK.getMediationNetwork()).buildUpon();
                String areAllFieldsValid = this.component1.areAllFieldsValid();
                if (areAllFieldsValid == null) {
                    areAllFieldsValid = "";
                }
                Map mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(DbParams.KEY_CHANNEL_EVENT_NAME, this.component2.getRevenue), TuplesKt.to("app_id", this.component1.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName()), TuplesKt.to("app_version", this.component1.n_().versionName), TuplesKt.to("sdk_version", AFc1oSDK.getMonetizationNetwork()), TuplesKt.to("api_version", AFc1oSDK.getCurrencyIso4217Code()), TuplesKt.to(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(this.areAllFieldsValid.getCurrencyIso4217Code())), TuplesKt.to("request_id", AFc1oSDK.getMediationNetwork()), TuplesKt.to("gaid", areAllFieldsValid));
                String currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(this.component1.getMediationNetwork);
                if (currencyIso4217Code != null) {
                    mutableMapOf.put("appsflyer_id", currencyIso4217Code);
                }
                Long monetizationNetwork = this.areAllFieldsValid.getMonetizationNetwork();
                if (monetizationNetwork != null) {
                    mutableMapOf.put("install_time", String.valueOf(monetizationNetwork.longValue()));
                }
                AFe1rSDK aFe1rSDK = this.component2;
                if (aFe1rSDK instanceof AFe1rSDK.AFa1zSDK) {
                    Float f = ((AFe1rSDK.AFa1zSDK) aFe1rSDK).getCurrencyIso4217Code;
                    if (f != null) {
                        mutableMapOf.put("event_revenue", String.valueOf(f.floatValue()));
                    }
                    Integer num = ((AFe1rSDK.AFa1zSDK) this.component2).AFAdRevenueData;
                    if (num != null) {
                        mutableMapOf.put("event_count", String.valueOf(num.intValue()));
                    }
                }
                for (Map.Entry entry : mutableMapOf.entrySet()) {
                    buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.registerTrigger(buildUpon.build(), this.component3, androidx.core.os.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new AFa1uSDK(objectRef, countDownLatch, this)));
            }
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            objectRef.element = AFe1uSDK.TIMEOUT;
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PRIVACY_SANDBOX;
            String message = th.getMessage();
            aFLogger.e(aFg1cSDK, "Error occurred: " + message, th, false, false, false, true);
        }
        return (AFe1uSDK) objectRef.element;
    }
}
