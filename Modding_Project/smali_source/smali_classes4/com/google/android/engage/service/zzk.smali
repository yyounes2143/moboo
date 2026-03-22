.class public final synthetic Lcom/google/android/engage/service/zzk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic zza:Lcom/google/android/engage/service/AppEngagePublishTaskWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/AppEngagePublishTaskWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/engage/service/zzk;->zza:Lcom/google/android/engage/service/AppEngagePublishTaskWorker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/zzk;->zza:Lcom/google/android/engage/service/AppEngagePublishTaskWorker;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/engage/service/AppEngageException;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/AppEngagePublishTaskWorker;->handleException(Lcom/google/android/engage/service/AppEngageException;)Landroidx/work/ListenableWorker$Result;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
