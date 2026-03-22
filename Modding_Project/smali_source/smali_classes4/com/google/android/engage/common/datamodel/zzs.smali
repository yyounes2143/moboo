.class public final Lcom/google/android/engage/common/datamodel/zzs;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzs;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/common/datamodel/zzs;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzs;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/common/datamodel/zzs;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzs;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzs;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzs;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzs;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd()Lcom/google/android/engage/common/datamodel/zzu;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/zzu;-><init>(Lcom/google/android/engage/common/datamodel/zzs;Lcom/google/android/engage/common/datamodel/zzt;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
