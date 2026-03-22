package com.facebook.internal.instrument.anrreport;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/instrument/anrreport/ANRHandler;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enabled", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class ANRHandler {
    @NotNull
    public static final ANRHandler INSTANCE = new ANRHandler();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List list, GraphResponse graphResponse) {
        Boolean valueOf;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRHandler.class)) {
            try {
                if (graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                    JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        valueOf = null;
                    } else {
                        valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getBoolean(FirebaseAnalytics.Param.SUCCESS));
                    }
                    if (Intrinsics.areEqual(valueOf, Boolean.TRUE)) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ((InstrumentData) it.next()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                }
            } catch (JSONException unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRHandler.class);
            }
        }
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InstrumentData instrumentData, InstrumentData instrumentData2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRHandler.class)) {
            return 0;
        }
        try {
            return instrumentData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(instrumentData2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRHandler.class);
            return 0;
        }
    }

    @JvmStatic
    @VisibleForTesting
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRHandler.class)) {
            try {
                if (Utility.Kkkkk()) {
                    return;
                }
                File[] Wwwwwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwww();
                ArrayList arrayList = new ArrayList(Wwwwwwwwwwwwwwwwwwwwwww2.length);
                for (File file : Wwwwwwwwwwwwwwwwwwwwwww2) {
                    arrayList.add(InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file));
                }
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    if (((InstrumentData) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        arrayList2.add(obj);
                    }
                }
                final List sortedWith = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ANRHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((InstrumentData) obj2, (InstrumentData) obj3);
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                });
                JSONArray jSONArray = new JSONArray();
                Iterator<Integer> it = RangesKt.until(0, Math.min(sortedWith.size(), 5)).iterator();
                while (it.hasNext()) {
                    jSONArray.put(sortedWith.get(((IntIterator) it).nextInt()));
                }
                InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
                InstrumentUtility.Wwwwwwwwwwwwwwww("anr_reports", jSONArray, new GraphRequest.Callback() { // from class: Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.GraphRequest.Callback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                        ANRHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(sortedWith, graphResponse);
                    }
                });
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRHandler.class);
            }
        }
    }

    @JvmStatic
    public static final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        synchronized (ANRHandler.class) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRHandler.class)) {
                return;
            }
            if (f6898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAndSet(true)) {
                return;
            }
            if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            ANRDetector.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
