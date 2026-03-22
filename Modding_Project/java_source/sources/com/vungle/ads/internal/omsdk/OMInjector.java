package com.vungle.ads.internal.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.iab.omid.library.vungle.Omid;
import com.vungle.ads.R;
import com.vungle.ads.internal.util.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000f\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u001b\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u0016J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00072\b\b\u0001\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010\u001a\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u0014H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/internal/omsdk/OMInjector;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "cachedOMSDKJS", "Ljava/util/concurrent/atomic/AtomicReference;", "", "cachedOMSessionJS", "getContext", "()Landroid/content/Context;", "uiHandler", "Landroid/os/Handler;", "getOMSDKJS", "getOMSDKJS$vungle_ads_release", "getOMSessionJS", "init", "", "injectJsFiles", "", "Ljava/io/File;", "dir", "injectJsFiles$vungle_ads_release", "loadJsFromRaw", "resId", "", "writeToFile", "lines", "outputFile", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class OMInjector {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String OM_SDK_JS = "omsdk.js";
    @NotNull
    private static final String OM_SESSION_JS = "omsdk-session.js";
    @NotNull
    private final Context context;
    @NotNull
    private final Handler uiHandler = new Handler(Looper.getMainLooper());
    @NotNull
    private AtomicReference<String> cachedOMSDKJS = new AtomicReference<>(null);
    @NotNull
    private AtomicReference<String> cachedOMSessionJS = new AtomicReference<>(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/omsdk/OMInjector$Companion;", "", "()V", "OM_SDK_JS", "", "OM_SESSION_JS", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public OMInjector(@NotNull Context context) {
        this.context = context;
    }

    private final String getOMSessionJS() {
        String str = this.cachedOMSessionJS.get();
        if (str == null) {
            String loadJsFromRaw = loadJsFromRaw(R.raw.omid_session_client_v1_5_3);
            this.cachedOMSessionJS.set(loadJsFromRaw);
            return loadJsFromRaw;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-2  reason: not valid java name */
    public static final void m330init$lambda2(OMInjector oMInjector) {
        Object m438constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            if (!Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(oMInjector.context);
            }
            m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
        if (m441exceptionOrNullimpl != null) {
            Logger.Companion companion3 = Logger.Companion;
            companion3.e("OMSDK", "error: " + m441exceptionOrNullimpl.getLocalizedMessage());
        }
    }

    private final String loadJsFromRaw(@RawRes int i) {
        Object m438constructorimpl;
        String str = null;
        try {
            Result.Companion companion = Result.Companion;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.context.getResources().openRawResource(i), Charsets.UTF_8), 8192);
            String readText = TextStreamsKt.readText(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, null);
            m438constructorimpl = Result.m438constructorimpl(readText);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m444isFailureimpl(m438constructorimpl)) {
            str = m438constructorimpl;
        }
        return str;
    }

    private final File writeToFile(String str, File file) {
        if (str != null) {
            FileWriter fileWriter = new FileWriter(file);
            try {
                fileWriter.write(str);
                fileWriter.flush();
                CloseableKt.closeFinally(fileWriter, null);
                return file;
            } finally {
            }
        } else {
            throw new IOException("omsdk js must not be null");
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final String getOMSDKJS$vungle_ads_release() {
        String str = this.cachedOMSDKJS.get();
        if (str == null) {
            String loadJsFromRaw = loadJsFromRaw(R.raw.omsdk_v1_5_3);
            this.cachedOMSDKJS.set(loadJsFromRaw);
            return loadJsFromRaw;
        }
        return str;
    }

    public final void init() {
        this.uiHandler.post(new Runnable() { // from class: com.vungle.ads.internal.omsdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                OMInjector.m330init$lambda2(OMInjector.this);
            }
        });
    }

    @WorkerThread
    @NotNull
    public final List<File> injectJsFiles$vungle_ads_release(@NotNull File file) {
        File file2;
        String oMSDKJS$vungle_ads_release = getOMSDKJS$vungle_ads_release();
        File file3 = null;
        if (oMSDKJS$vungle_ads_release != null) {
            file2 = writeToFile(oMSDKJS$vungle_ads_release, new File(file, OM_SDK_JS));
        } else {
            file2 = null;
        }
        String oMSessionJS = getOMSessionJS();
        if (oMSessionJS != null) {
            file3 = writeToFile(oMSessionJS, new File(file, OM_SESSION_JS));
        }
        return CollectionsKt.listOfNotNull((Object[]) new File[]{file2, file3});
    }
}
