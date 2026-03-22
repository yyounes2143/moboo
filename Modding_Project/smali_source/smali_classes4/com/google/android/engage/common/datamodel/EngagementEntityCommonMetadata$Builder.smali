.class final Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzs;

.field private zzb:Ljava/lang/String;

.field private zzc:Landroid/net/Uri;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
