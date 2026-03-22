.class public final Lcom/google/android/engage/video/datamodel/zzt;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzs;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Long;

.field private zzd:I

.field private zze:Ljava/lang/Long;

.field private final zzf:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzs;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/video/datamodel/zzt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzd:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/android/engage/common/datamodel/RecommendationReason;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zze:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzd(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzt;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzj(J)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzc:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzk(J)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zze:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzm(Lcom/google/android/engage/common/datamodel/RecommendationReason;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/RecommendationReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/engage/video/datamodel/zzt;->zzd:I

    .line 2
    .line 3
    return-object p0
.end method
