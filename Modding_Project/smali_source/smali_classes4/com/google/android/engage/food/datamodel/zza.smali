.class final Lcom/google/android/engage/food/datamodel/zza;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/engage/common/datamodel/zzs;

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/engage/common/datamodel/Rating;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/food/datamodel/zza;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/zza;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/food/datamodel/zza;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/food/datamodel/zza;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzd:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/food/datamodel/zza;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Ljava/util/List;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Landroid/net/Uri;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/zza;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zza;->zzb:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzh(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/zza;->zzd:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/zza;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
