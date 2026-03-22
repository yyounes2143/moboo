.class public Lcom/google/android/engage/service/PublishStatusRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/service/PublishStatusRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(Lcom/google/android/engage/service/PublishStatusRequest$Builder;)V
    .locals 0
    .param p1    # Lcom/google/android/engage/service/PublishStatusRequest$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/service/PublishStatusRequest$Builder;->zza(Lcom/google/android/engage/service/PublishStatusRequest$Builder;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/engage/service/PublishStatusRequest;->zza:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/service/PublishStatusRequest;->zza:I

    .line 2
    .line 3
    return v0
.end method
