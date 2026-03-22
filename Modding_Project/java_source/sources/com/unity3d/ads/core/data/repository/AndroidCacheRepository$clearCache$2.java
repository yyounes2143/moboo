package com.unity3d.ads.core.data.repository;

import com.unity3d.services.core.network.domain.CleanupDirectory;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2", f = "AndroidCacheRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n13579#2,2:133\n13579#2,2:135\n*S KotlinDebug\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2\n*L\n107#1:133,2\n114#1:135,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidCacheRepository$clearCache$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$clearCache$2(AndroidCacheRepository androidCacheRepository, Continuation<? super AndroidCacheRepository$clearCache$2> continuation) {
        super(2, continuation);
        this.this$0 = androidCacheRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AndroidCacheRepository$clearCache$2(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SessionRepository sessionRepository;
        SessionRepository sessionRepository2;
        CleanupDirectory cleanupDirectory;
        File file;
        SessionRepository sessionRepository3;
        SessionRepository sessionRepository4;
        CleanupDirectory cleanupDirectory2;
        File file2;
        File file3;
        File file4;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            sessionRepository = this.this$0.sessionRepository;
            int i = 0;
            if (!sessionRepository.getNativeConfiguration().hasCachedAssetsConfiguration()) {
                file4 = this.this$0.cacheDir;
                File[] listFiles = file4.listFiles();
                if (listFiles == null) {
                    return null;
                }
                int length = listFiles.length;
                while (i < length) {
                    listFiles[i].delete();
                    i++;
                }
                return Unit.INSTANCE;
            }
            sessionRepository2 = this.this$0.sessionRepository;
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = sessionRepository2.getNativeConfiguration().getCachedAssetsConfiguration();
            cleanupDirectory = this.this$0.cleanupDirectory;
            file = this.this$0.cacheDir;
            cleanupDirectory.invoke(file, cachedAssetsConfiguration.getMaxCachedAssetSizeMb(), cachedAssetsConfiguration.getMaxCachedAssetAgeMs());
            sessionRepository3 = this.this$0.sessionRepository;
            if (!sessionRepository3.getNativeConfiguration().hasCachedWebviewFilesConfiguration()) {
                file3 = this.this$0.webviewCacheDir;
                File[] listFiles2 = file3.listFiles();
                if (listFiles2 == null) {
                    return null;
                }
                int length2 = listFiles2.length;
                while (i < length2) {
                    listFiles2[i].delete();
                    i++;
                }
                return Unit.INSTANCE;
            }
            sessionRepository4 = this.this$0.sessionRepository;
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedWebviewFilesConfiguration = sessionRepository4.getNativeConfiguration().getCachedWebviewFilesConfiguration();
            cleanupDirectory2 = this.this$0.cleanupDirectory;
            file2 = this.this$0.webviewCacheDir;
            cleanupDirectory2.invoke(file2, cachedWebviewFilesConfiguration.getMaxCachedAssetSizeMb(), cachedWebviewFilesConfiguration.getMaxCachedAssetAgeMs());
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((AndroidCacheRepository$clearCache$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
