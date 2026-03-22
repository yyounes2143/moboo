package com.facebook.internal.instrument.errorreport;

import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.errorreport.ErrorReportData;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u0003J\u0015\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;", "", "<init>", "()V", "", NotificationCompat.CATEGORY_MESSAGE, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Ljava/io/File;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class ErrorReportHandler {
    @NotNull
    public static final ErrorReportHandler INSTANCE = new ErrorReportHandler();

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(ArrayList arrayList, GraphResponse graphResponse) {
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
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((ErrorReportData) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            }
        } catch (JSONException unused) {
        }
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwww(ErrorReportData errorReportData, ErrorReportData errorReportData2) {
        return errorReportData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(errorReportData2);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Utility.Kkkkk()) {
            return;
        }
        File[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        final ArrayList arrayList = new ArrayList();
        int length = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length;
        int i = 0;
        while (i < length) {
            File file = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i];
            i++;
            ErrorReportData errorReportData = new ErrorReportData(file);
            if (errorReportData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                arrayList.add(errorReportData);
            }
        }
        CollectionsKt.sortWith(arrayList, new Comparator() { // from class: Www.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = ErrorReportHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww((ErrorReportData) obj, (ErrorReportData) obj2);
                return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        });
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < arrayList.size() && i2 < 1000; i2++) {
            jSONArray.put(arrayList.get(i2));
        }
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.Wwwwwwwwwwwwwwww("error_reports", jSONArray, new GraphRequest.Callback() { // from class: Www.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.GraphRequest.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                ErrorReportHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(arrayList, graphResponse);
            }
        });
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        try {
            new ErrorReportData(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Exception unused) {
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return new Regex(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"error_log_"}, 1))).matches(str);
    }

    @JvmStatic
    @NotNull
    public static final File[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new File[0];
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles(new FilenameFilter() { // from class: Www.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ErrorReportHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            }
        });
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
