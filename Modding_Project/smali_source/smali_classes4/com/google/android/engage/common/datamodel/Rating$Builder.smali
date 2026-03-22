.class public final Lcom/google/android/engage/common/datamodel/Rating$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:D

.field private zzb:D

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zza:D

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzb:D

    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/Rating$Builder;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzb:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/Rating$Builder;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zza:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/Rating$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/Rating$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/common/datamodel/Rating;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/Rating;-><init>(Lcom/google/android/engage/common/datamodel/Rating$Builder;Lcom/google/android/engage/common/datamodel/zzag;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setCount(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/Rating$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCountValue(J)Lcom/google/android/engage/common/datamodel/Rating$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzd:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCurrentValue(D)Lcom/google/android/engage/common/datamodel/Rating$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzb:D

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxValue(D)Lcom/google/android/engage/common/datamodel/Rating$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zza:D

    .line 2
    .line 3
    return-object p0
.end method
