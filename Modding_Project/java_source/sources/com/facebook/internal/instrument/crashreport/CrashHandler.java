package com.facebook.internal.instrument.crashreport;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0013\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "previousHandler", "<init>", "(Ljava/lang/Thread$UncaughtExceptionHandler;)V", "Ljava/lang/Thread;", "t", "", "e", "", "uncaughtException", "(Ljava/lang/Thread;Ljava/lang/Throwable;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Thread$UncaughtExceptionHandler;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class CrashHandler implements Thread.UncaughtExceptionHandler {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CrashHandler f6899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f6901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CrashHandler.class.getCanonicalName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\f\u001a\n \u000b*\u0004\u0018\u00010\n0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "MAX_CRASH_REPORT_NUM", "I", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "instance", "Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List list, GraphResponse graphResponse) {
            Boolean valueOf;
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
            }
        }

        public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InstrumentData instrumentData, InstrumentData instrumentData2) {
            return instrumentData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(instrumentData2);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Utility.Kkkkk()) {
                return;
            }
            File[] Wwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwww();
            ArrayList arrayList = new ArrayList(Wwwwwwwwwwwwwwwwwww2.length);
            for (File file : Wwwwwwwwwwwwwwwwwww2) {
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
            final List sortedWith = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: Wwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CrashHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((InstrumentData) obj2, (InstrumentData) obj3);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            });
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = RangesKt.until(0, Math.min(sortedWith.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(sortedWith.get(((IntIterator) it).nextInt()));
            }
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            InstrumentUtility.Wwwwwwwwwwwwwwww("crash_reports", jSONArray, new GraphRequest.Callback() { // from class: Wwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    CrashHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(sortedWith, graphResponse);
                }
            });
        }

        @JvmStatic
        public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            try {
                if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (CrashHandler.f6899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    String unused = CrashHandler.f6900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    return;
                }
                CrashHandler.f6899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CrashHandler(Thread.getDefaultUncaughtExceptionHandler(), null);
                Thread.setDefaultUncaughtExceptionHandler(CrashHandler.f6899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                throw th;
            }
        }

        public Companion() {
        }
    }

    public /* synthetic */ CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, DefaultConstructorMarker defaultConstructorMarker) {
        this(uncaughtExceptionHandler);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(@NotNull Thread thread, @NotNull Throwable th) {
        if (InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwww(th)) {
            ExceptionAnalyzer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InstrumentData.Type.CrashReport).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f6901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }

    public CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f6901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uncaughtExceptionHandler;
    }
}
