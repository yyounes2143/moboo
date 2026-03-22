.class public final enum Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;
.super Ljava/lang/Enum;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzgyw;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

.field public static final zzd:I = 0x0

.field public static final zze:I = 0x1

.field public static final zzf:I = 0x2

.field private static final zzg:Lcom/google/android/gms/internal/ads/zzgyx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgyx<",
            "Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 2
    .line 3
    const-string v1, "PLATFORM_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 12
    .line 13
    const-string v1, "IOS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 22
    .line 23
    const-string v1, "ANDROID"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzf()[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzh:[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb$1;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb$1;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzg:Lcom/google/android/gms/internal/ads/zzgyx;

    .line 43
    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzi:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzh:[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 18
    .line 19
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgyx<",
            "Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzg:Lcom/google/android/gms/internal/ads/zzgyx;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgyy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb$zza;->zza:Lcom/google/android/gms/internal/ads/zzgyy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzi:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzo$zzb;->zzi:I

    .line 2
    .line 3
    return v0
.end method
