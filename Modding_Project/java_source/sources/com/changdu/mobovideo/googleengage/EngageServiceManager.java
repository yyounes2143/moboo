package com.changdu.mobovideo.googleengage;

import android.content.Context;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.googleengage.data.SeriesInfo;
import com.google.android.engage.common.datamodel.ContinuationCluster;
import com.google.android.engage.common.datamodel.FeaturedCluster;
import com.google.android.engage.common.datamodel.RecommendationCluster;
import com.google.android.engage.service.AppEngageException;
import com.google.android.engage.service.AppEngagePublishClient;
import com.google.android.engage.service.PublishContinuationClusterRequest;
import com.google.android.engage.service.PublishFeaturedClusterRequest;
import com.google.android.engage.service.PublishRecommendationClustersRequest;
import com.google.android.engage.service.PublishStatusRequest;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J'\u0010\u000b\u001a\u00020\t2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0007H\u0086@¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011¢\u0006\u0004\b\u0015\u0010\u0014J-\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011¢\u0006\u0004\b\u0016\u0010\u0014J?\u0010\u001b\u001a\u00020\t2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\b2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\b2\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001eH\u0002¢\u0006\u0004\b \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/changdu/mobovideo/googleengage/EngageServiceManager;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lkotlin/Function2;", "", "", "", "callback", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/jvm/functions/Function2;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/googleengage/data/SeriesInfo;", "Lkotlin/collections/ArrayList;", "episodes", "Wwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/ArrayList;)V", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "Lcom/google/android/gms/tasks/Task;", "Ljava/lang/Void;", "task", "clusterName", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;)Ljava/lang/String;", "Lcom/google/android/engage/service/AppEngagePublishClient;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/google/android/engage/service/AppEngagePublishClient;", "client", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngageServiceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngageServiceManager.kt\ncom/changdu/mobovideo/googleengage/EngageServiceManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n426#2,11:218\n1869#3,2:229\n1869#3,2:231\n1869#3,2:233\n*S KotlinDebug\n*F\n+ 1 EngageServiceManager.kt\ncom/changdu/mobovideo/googleengage/EngageServiceManager\n*L\n62#1:218,11\n83#1:229,2\n113#1:231,2\n143#1:233,2\n*E\n"})
/* loaded from: classes3.dex */
public final class EngageServiceManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AppEngagePublishClient f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/changdu/mobovideo/googleengage/EngageServiceManager$Companion;", "", "<init>", "()V", "TAG", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public EngageServiceManager(@NotNull Context context) {
        this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AppEngagePublishClient(context);
    }

    public static final Unit Wwwwwwwwwwwwww(boolean z, String str) {
        return Unit.INSTANCE;
    }

    public static final void Wwwwwwwwwwwwwww(EngageServiceManager engageServiceManager, Task task) {
        engageServiceManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(task, "推荐集群", new Function2() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit Wwwwwwwwwwwwww2;
                Wwwwwwwwwwwwww2 = EngageServiceManager.Wwwwwwwwwwwwww(((Boolean) obj).booleanValue(), (String) obj2);
                return Wwwwwwwwwwwwww2;
            }
        });
    }

    public static final Unit Wwwwwwwwwwwwwwwww(boolean z, String str) {
        return Unit.INSTANCE;
    }

    public static final void Wwwwwwwwwwwwwwwwww(EngageServiceManager engageServiceManager, Task task) {
        engageServiceManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(task, "精选集群", new Function2() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit Wwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwww2 = EngageServiceManager.Wwwwwwwwwwwwwwwww(((Boolean) obj).booleanValue(), (String) obj2);
                return Wwwwwwwwwwwwwwwww2;
            }
        });
    }

    public static final Unit Wwwwwwwwwwwwwwwwwwww(boolean z, String str) {
        return Unit.INSTANCE;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwww(EngageServiceManager engageServiceManager, Task task) {
        engageServiceManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(task, "接续观看集群", new Function2() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit Wwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwww2 = EngageServiceManager.Wwwwwwwwwwwwwwwwwwww(((Boolean) obj).booleanValue(), (String) obj2);
                return Wwwwwwwwwwwwwwwwwwww2;
            }
        });
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(Function2 function2, EngageServiceManager engageServiceManager, Task task) {
        if (task.isSuccessful()) {
            if (((Boolean) task.getResult()).booleanValue()) {
                function2.invoke(Boolean.TRUE, "Engage 服务可用，可以发布内容");
            } else {
                function2.invoke(Boolean.FALSE, "Engage 服务不可用（设备可能不支持 Entertainment Space）");
            }
            engageServiceManager.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.updatePublishStatus(new PublishStatusRequest.Builder().setStatusCode(1).build());
            return;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = engageServiceManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(task.getException());
        Boolean bool = Boolean.FALSE;
        function2.invoke(bool, "检查服务可用性失败: " + Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwww(@NotNull Context context, @NotNull ArrayList<SeriesInfo> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        RecommendationCluster.Builder title = new RecommendationCluster.Builder().setTitle(context.getString(R.string.widget_hot));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            SeriesInfo seriesInfo = arrayList.get(i);
            i++;
            title.addEntity(EntityMapper.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(seriesInfo, context));
        }
        this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.publishRecommendationClusters(new PublishRecommendationClustersRequest.Builder().addRecommendationCluster(title.build()).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EngageServiceManager.Wwwwwwwwwwwwwww(EngageServiceManager.this, task);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull ArrayList<SeriesInfo> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        FeaturedCluster.Builder builder = new FeaturedCluster.Builder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            SeriesInfo seriesInfo = arrayList.get(i);
            i++;
            builder.addEntity(EntityMapper.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(seriesInfo, context));
        }
        this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.publishFeaturedCluster(new PublishFeaturedClusterRequest.Builder().setFeaturedCluster(builder.build()).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EngageServiceManager.Wwwwwwwwwwwwwwwwww(EngageServiceManager.this, task);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull ArrayList<SeriesInfo> arrayList) {
        if (arrayList.isEmpty()) {
            this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.deleteContinuationCluster();
            return;
        }
        ContinuationCluster.Builder builder = new ContinuationCluster.Builder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            SeriesInfo seriesInfo = arrayList.get(i);
            i++;
            builder.addEntity(EntityMapper.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(seriesInfo, context));
        }
        this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.publishContinuationCluster(new PublishContinuationClusterRequest.Builder().setContinuationCluster(builder.build()).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EngageServiceManager.Wwwwwwwwwwwwwwwwwwwww(EngageServiceManager.this, task);
            }
        });
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<? super Boolean> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Wwwwwwwwwwwwwwwwwwwwwwwww(new Function2<Boolean, String, Unit>() { // from class: com.changdu.mobovideo.googleengage.EngageServiceManager$isServiceAvailableCoroutine$2$1
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, String str) {
                cancellableContinuationImpl.resume((CancellableContinuation<Boolean>) Boolean.valueOf(z), (Function1<? super Throwable, Unit>) new Function1<Throwable, Unit>() { // from class: com.changdu.mobovideo.googleengage.EngageServiceManager$isServiceAvailableCoroutine$2$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
                        return Unit.INSTANCE;
                    }

                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th) {
                    }
                });
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, String str) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bool.booleanValue(), str);
                return Unit.INSTANCE;
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Function2<? super Boolean, ? super String, Unit> function2) {
        this.f5454Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isServiceAvailable().addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EngageServiceManager.Wwwwwwwwwwwwwwwwwwwwwwww(Function2.this, this, task);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(Task<Void> task, String str, Function2<? super Boolean, ? super String, Unit> function2) {
        if (task.isSuccessful()) {
            function2.invoke(Boolean.TRUE, "发布成功");
            return;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(task.getException());
        Boolean bool = Boolean.FALSE;
        function2.invoke(bool, "发布失败: " + Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(Exception exc) {
        String message;
        if (exc instanceof AppEngageException) {
            AppEngageException appEngageException = (AppEngageException) exc;
            switch (appEngageException.getErrorCode()) {
                case 1:
                    return "服务未找到";
                case 2:
                    return "服务不可用";
                case 3:
                    return "服务调用执行失败";
                case 4:
                    return "权限被拒绝";
                case 5:
                    return "参数无效";
                case 6:
                    return "内部错误";
                case 7:
                    return "资源耗尽";
                default:
                    int errorCode = appEngageException.getErrorCode();
                    return "未知错误 (" + errorCode + ")";
            }
        } else if (exc != null && (message = exc.getMessage()) != null) {
            return message;
        } else {
            return "未知错误";
        }
    }
}
