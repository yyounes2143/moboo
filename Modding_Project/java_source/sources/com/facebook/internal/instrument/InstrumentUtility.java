package com.facebook.internal.instrument;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007¢\u0006\u0004\b\u0017\u0010\u0016J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007¢\u0006\u0004\b\u0018\u0010\u0016J#\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b \u0010!J\u0019\u0010\"\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\"\u0010#J+\u0010)\u001a\u00020\u001f2\b\u0010$\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0007¢\u0006\u0004\b)\u0010*J\u0011\u0010+\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020-H\u0007¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentUtility;", "", "<init>", "()V", "", "e", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Thread;", "thread", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Thread;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;)Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Thread;)Z", "", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwww", "()[Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "filename", "deleteOnException", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Lorg/json/JSONObject;", "content", "", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "key", "Lorg/json/JSONArray;", "reports", "Lcom/facebook/GraphRequest$Callback;", "callback", "Wwwwwwwwwwwwwwww", "(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "Ljava/lang/StackTraceElement;", "element", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/StackTraceElement;)Z", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class InstrumentUtility {
    @NotNull
    public static final InstrumentUtility INSTANCE = new InstrumentUtility();

    @JvmStatic
    public static final void Wwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && str != null && str2 != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str));
                fileOutputStream.write(str2.getBytes(Charsets.UTF_8));
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwww(@Nullable String str, @NotNull JSONArray jSONArray, @Nullable GraphRequest.Callback callback) {
        if (jSONArray.length() != 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(str, jSONArray.toString());
                JSONObject Wwwww2 = Utility.Wwwww();
                if (Wwwww2 != null) {
                    Iterator<String> keys = Wwwww2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.put(next, Wwwww2.get(next));
                    }
                }
                GraphRequest.Companion companion = GraphRequest.Companion;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                companion.Wwwwwwww(null, String.format("%s/instruments", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()}, 1)), jSONObject, callback).Wwwwwwwwwwwwwwwwwwwwwww();
            } catch (JSONException unused) {
            }
        }
    }

    @JvmStatic
    @Nullable
    public static final JSONObject Wwwwwwwwwwwwwwwww(@Nullable String str, boolean z) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && str != null) {
            try {
                return new JSONObject(Utility.Illllllllllll(new FileInputStream(new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str))));
            } catch (Exception unused) {
                if (z) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                }
            }
        }
        return null;
    }

    public static final boolean Wwwwwwwwwwwwwwwwww(File file, String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return new Regex(String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3))).matches(str);
    }

    @JvmStatic
    @NotNull
    public static final File[] Wwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new File[0];
        }
        File[] listFiles = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles(new FilenameFilter() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwww2;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwww(File file, String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return new Regex(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"analysis_log_"}, 1))).matches(str);
    }

    @JvmStatic
    @NotNull
    public static final File[] Wwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new File[0];
        }
        File[] listFiles = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles(new FilenameFilter() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwwwww2;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwww(File file, String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return new Regex(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"anr_log_"}, 1))).matches(str);
    }

    @JvmStatic
    @NotNull
    public static final File[] Wwwwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new File[0];
        }
        File[] listFiles = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles(new FilenameFilter() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwwwwwww2;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable Thread thread) {
        StackTraceElement[] stackTrace;
        if (thread != null && (stackTrace = thread.getStackTrace()) != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww(stackTraceElement)) {
                    if (StringsKt.startsWith$default(stackTraceElement.getClassName(), "com.facebook.appevents.codeless", false, 2, (Object) null) || StringsKt.startsWith$default(stackTraceElement.getClassName(), "com.facebook.appevents.suggestedevents", false, 2, (Object) null)) {
                        if (!StringsKt.startsWith$default(stackTraceElement.getMethodName(), "onClick", false, 2, (Object) null) && !StringsKt.startsWith$default(stackTraceElement.getMethodName(), "onItemClick", false, 2, (Object) null) && !StringsKt.startsWith$default(stackTraceElement.getMethodName(), "onTouch", false, 2, (Object) null)) {
                            return true;
                        }
                    } else {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th) {
        if (th == null) {
            return false;
        }
        Throwable th2 = null;
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (i < length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                i++;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww(stackTraceElement)) {
                    return true;
                }
            }
            th2 = th;
            th = th.getCause();
        }
        return false;
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull StackTraceElement stackTraceElement) {
        if (!StringsKt.startsWith$default(stackTraceElement.getClassName(), "com.facebook", false, 2, (Object) null) && !StringsKt.startsWith$default(stackTraceElement.getClassName(), "com.meta", false, 2, (Object) null)) {
            return false;
        }
        return true;
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th) {
        Throwable th2 = null;
        if (th == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (i < length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                i++;
                jSONArray.put(stackTraceElement.toString());
            }
            th2 = th;
            th = th.getCause();
        }
        return jSONArray.toString();
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Thread thread) {
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONArray jSONArray = new JSONArray();
        int length = stackTrace.length;
        int i = 0;
        while (i < length) {
            StackTraceElement stackTraceElement = stackTrace[i];
            i++;
            jSONArray.put(stackTraceElement.toString());
        }
        return jSONArray.toString();
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File file = new File(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getCacheDir(), "instrument");
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        return file;
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th) {
        if (th == null) {
            return null;
        }
        if (th.getCause() == null) {
            return th.toString();
        }
        return String.valueOf(th.getCause());
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && str != null) {
            return new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str).delete();
        }
        return false;
    }
}
