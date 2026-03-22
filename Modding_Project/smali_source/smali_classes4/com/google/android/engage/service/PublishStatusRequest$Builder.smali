.class public Lcom/google/android/engage/service/PublishStatusRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/service/PublishStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/service/PublishStatusRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/service/PublishStatusRequest$Builder;->zza:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/service/PublishStatusRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/PublishStatusRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/engage/service/PublishStatusRequest;-><init>(Lcom/google/android/engage/service/PublishStatusRequest$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setStatusCode(I)Lcom/google/android/engage/service/PublishStatusRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/service/PublishStatusRequest$Builder;->zza:I

    .line 2
    .line 3
    return-object p0
.end method
