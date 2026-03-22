.class final Lcom/google/android/engage/social/datamodel/zzh;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/engage/common/datamodel/zzs;

.field private final zzc:Lcom/google/common/collect/ImmutableList$Builder;


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
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/social/datamodel/zzh;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/social/datamodel/zzh;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/social/datamodel/zzh;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzc(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Landroid/net/Uri;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/zzh;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzh;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
