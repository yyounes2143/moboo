package com.facebook.internal.instrument;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\r\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/instrument/ExceptionAnalyzer;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "enabled", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class ExceptionAnalyzer {
    @NotNull
    public static final ExceptionAnalyzer INSTANCE = new ExceptionAnalyzer();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(InstrumentData instrumentData, GraphResponse graphResponse) {
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
                    instrumentData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        } catch (JSONException unused) {
        }
    }

    @JvmStatic
    @VisibleForTesting(otherwise = 2)
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th) {
        StackTraceElement[] stackTrace;
        if (f6886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && th != null) {
            HashSet hashSet = new HashSet();
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                FeatureManager featureManager = FeatureManager.INSTANCE;
                FeatureManager.Feature Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stackTraceElement.getClassName());
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != FeatureManager.Feature.Unknown) {
                    FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    hashSet.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString());
                }
            }
            if (FacebookSdk.Wwwwwwwwwwwwwwwwwww() && !hashSet.isEmpty()) {
                InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new JSONArray((Collection) hashSet)).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        f6886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Utility.Kkkkk()) {
            File[] Wwwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwww();
            ArrayList arrayList = new ArrayList();
            int length = Wwwwwwwwwwwwwwwwwwwww2.length;
            int i = 0;
            while (i < length) {
                File file = Wwwwwwwwwwwwwwwwwwwww2[i];
                i++;
                final InstrumentData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("crash_shield", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString());
                        GraphRequest.Companion companion = GraphRequest.Companion;
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        arrayList.add(companion.Wwwwwwww(null, String.format("%s/instruments", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()}, 1)), jSONObject, new GraphRequest.Callback() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // com.facebook.GraphRequest.Callback
                            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                                ExceptionAnalyzer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(InstrumentData.this, graphResponse);
                            }
                        }));
                    } catch (JSONException unused) {
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            new GraphRequestBatch(arrayList).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
