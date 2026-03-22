package com.vungle.ads.internal.session;

import android.content.Context;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.FutureResult;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.modules.SerializersModule;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017J\u001e\u0010\u001b\u001a\u0002H\u001c\"\u0006\b\u0000\u0010\u001c\u0018\u00012\u0006\u0010\u001d\u001a\u00020\u0005H\u0082\b¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010 H\u0002J\u000e\u0010!\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017J\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00170 J\u0016\u0010#\u001a\u00020\u00192\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170 H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/vungle/ads/internal/session/UnclosedAdDetector;", "", "context", "Landroid/content/Context;", JsonStorageKeyNames.SESSION_ID_KEY, "", "executors", "Lcom/vungle/ads/internal/executor/Executors;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/executor/Executors;Lcom/vungle/ads/internal/util/PathProvider;)V", "getContext", "()Landroid/content/Context;", "getExecutors", "()Lcom/vungle/ads/internal/executor/Executors;", "file", "Ljava/io/File;", "getPathProvider", "()Lcom/vungle/ads/internal/util/PathProvider;", "ready", "", "unclosedAdList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/vungle/ads/internal/model/UnclosedAd;", "addUnclosedAd", "", "ad", "decodeJson", "T", "jsonString", "(Ljava/lang/String;)Ljava/lang/Object;", "readUnclosedAdFromFile", "", "removeUnclosedAd", "retrieveUnclosedAd", "writeUnclosedAdToFile", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class UnclosedAdDetector {
    @NotNull
    private static final String FILENAME = "unclosed_ad";
    @NotNull
    private final Context context;
    @NotNull
    private final Executors executors;
    @NotNull
    private File file;
    @NotNull
    private final PathProvider pathProvider;
    private boolean ready;
    @NotNull
    private final String sessionId;
    @NotNull
    private final CopyOnWriteArrayList<UnclosedAd> unclosedAdList = new CopyOnWriteArrayList<>();
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.session.UnclosedAdDetector$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
            jsonBuilder.setIgnoreUnknownKeys(true);
            jsonBuilder.setEncodeDefaults(true);
            jsonBuilder.setExplicitNulls(false);
            jsonBuilder.setAllowStructuredMapKeys(true);
        }
    }, 1, null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/internal/session/UnclosedAdDetector$Companion;", "", "()V", "FILENAME", "", "json", "Lkotlinx/serialization/json/Json;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public UnclosedAdDetector(@NotNull Context context, @NotNull String str, @NotNull Executors executors, @NotNull PathProvider pathProvider) {
        Object m438constructorimpl;
        boolean m445isSuccessimpl;
        this.context = context;
        this.sessionId = str;
        this.executors = executors;
        this.pathProvider = pathProvider;
        this.file = pathProvider.getUnclosedAdFile(FILENAME);
        if (!this.file.exists()) {
            try {
                Result.Companion companion = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(Boolean.valueOf(this.file.createNewFile()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
            }
            Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
            if (m441exceptionOrNullimpl != null) {
                Logger.Companion companion3 = Logger.Companion;
                companion3.e("UnclosedAdDetector", "Fail to create unclosed ad file: " + m441exceptionOrNullimpl.getMessage());
            }
            m445isSuccessimpl = Result.m445isSuccessimpl(m438constructorimpl);
        } else {
            m445isSuccessimpl = true;
        }
        this.ready = m445isSuccessimpl;
    }

    private final /* synthetic */ <T> T decodeJson(String str) {
        Json json2 = json;
        SerializersModule serializersModule = json2.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        return (T) json2.decodeFromString(SerializersKt.serializer(serializersModule, (KType) null), str);
    }

    private final List<UnclosedAd> readUnclosedAdFromFile() {
        if (!this.ready) {
            return CollectionsKt.emptyList();
        }
        return (List) new FutureResult(this.executors.getIoExecutor().submit(new Callable() { // from class: com.vungle.ads.internal.session.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List m342readUnclosedAdFromFile$lambda4;
                m342readUnclosedAdFromFile$lambda4 = UnclosedAdDetector.m342readUnclosedAdFromFile$lambda4(UnclosedAdDetector.this);
                return m342readUnclosedAdFromFile$lambda4;
            }
        })).get(1000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readUnclosedAdFromFile$lambda-4  reason: not valid java name */
    public static final List m342readUnclosedAdFromFile$lambda4(UnclosedAdDetector unclosedAdDetector) {
        try {
            String readString = FileUtility.INSTANCE.readString(unclosedAdDetector.file);
            if (readString != null && readString.length() != 0) {
                Json json2 = json;
                return (List) json2.decodeFromString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(UnclosedAd.class)))), readString);
            }
            return new ArrayList();
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e("UnclosedAdDetector", "Fail to read unclosed ad file " + e.getMessage());
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: retrieveUnclosedAd$lambda-3  reason: not valid java name */
    public static final void m343retrieveUnclosedAd$lambda3(UnclosedAdDetector unclosedAdDetector) {
        try {
            FileUtility.deleteAndLogIfFailed(unclosedAdDetector.file);
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e("UnclosedAdDetector", "Fail to delete file " + e.getMessage());
        }
    }

    private final void writeUnclosedAdToFile(List<UnclosedAd> list) {
        if (this.ready) {
            try {
                Json json2 = json;
                final String encodeToString = json2.encodeToString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(UnclosedAd.class)))), list);
                this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnclosedAdDetector.m344writeUnclosedAdToFile$lambda5(UnclosedAdDetector.this, encodeToString);
                    }
                });
            } catch (Throwable th) {
                Logger.Companion companion = Logger.Companion;
                companion.e("UnclosedAdDetector", "Fail to write unclosed ad file " + th.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: writeUnclosedAdToFile$lambda-5  reason: not valid java name */
    public static final void m344writeUnclosedAdToFile$lambda5(UnclosedAdDetector unclosedAdDetector, String str) {
        FileUtility.INSTANCE.writeString(unclosedAdDetector.file, str);
    }

    public final void addUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        if (!this.ready) {
            return;
        }
        unclosedAd.setSessionId(this.sessionId);
        this.unclosedAdList.add(unclosedAd);
        writeUnclosedAdToFile(this.unclosedAdList);
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final Executors getExecutors() {
        return this.executors;
    }

    @NotNull
    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }

    public final void removeUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        if (this.ready && this.unclosedAdList.contains(unclosedAd)) {
            this.unclosedAdList.remove(unclosedAd);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    @NotNull
    public final List<UnclosedAd> retrieveUnclosedAd() {
        ArrayList arrayList = new ArrayList();
        if (!this.ready) {
            return arrayList;
        }
        List<UnclosedAd> readUnclosedAdFromFile = readUnclosedAdFromFile();
        if (readUnclosedAdFromFile != null) {
            arrayList.addAll(readUnclosedAdFromFile);
        }
        this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                UnclosedAdDetector.m343retrieveUnclosedAd$lambda3(UnclosedAdDetector.this);
            }
        });
        return arrayList;
    }
}
