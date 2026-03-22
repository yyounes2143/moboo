.class final Lcom/google/android/engage/audio/datamodel/zza;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Integer;

.field private zzd:Ljava/lang/Long;

.field private final zze:Lcom/google/android/engage/common/datamodel/zzs;


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
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zze:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/audio/datamodel/zza;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zze:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/audio/datamodel/zza;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzc:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/audio/datamodel/zza;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/audio/datamodel/zza;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/audio/datamodel/zza;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zze:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zze:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/zza;->zze:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(J)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzd:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/zza;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg(I)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/zza;->zzc:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method
