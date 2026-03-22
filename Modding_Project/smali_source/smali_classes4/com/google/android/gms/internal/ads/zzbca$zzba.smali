.class public final Lcom/google/android/gms/internal/ads/zzbca$zzba;
.super Lcom/google/android/gms/internal/ads/zzgys;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbca$zzbb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgys<",
        "Lcom/google/android/gms/internal/ads/zzbca$zzba;",
        "Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbca$zzbb;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zzhal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhal<",
            "Lcom/google/android/gms/internal/ads/zzbca$zzba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

.field private zzk:I

.field private zzl:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgys;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgys;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzi:I

    .line 7
    .line 8
    return-void
.end method

.method public static zzA()Lcom/google/android/gms/internal/ads/zzhal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhal<",
            "Lcom/google/android/gms/internal/ads/zzbca$zzba;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbN()Lcom/google/android/gms/internal/ads/zzhal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzbca$zzba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzbca$zzba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzN()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzbca$zzba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzbca$zzba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzP()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzbca$zzba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzQ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzbca$zzba;Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzR(Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzbca$zzba;Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzS(Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzbca$zzba;Lcom/google/android/gms/internal/ads/zzbca$zzq;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzT(Lcom/google/android/gms/internal/ads/zzbca$zzq;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbca$zzba;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzU(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzbca$zzba;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzV(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzbca$zzba;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzW(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private zzM()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x3

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 9
    .line 10
    return-void
.end method

.method private zzN()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzi:I

    .line 10
    .line 11
    return-void
.end method

.method private zzO()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzm:I

    .line 9
    .line 10
    return-void
.end method

.method private zzP()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzk:I

    .line 9
    .line 10
    return-void
.end method

.method private zzQ()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzl:I

    .line 9
    .line 10
    return-void
.end method

.method private zzR(Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzaw;->zzg()Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbca$zzaw;->zzb(Lcom/google/android/gms/internal/ads/zzbca$zzaw;)Lcom/google/android/gms/internal/ads/zzbca$zzaw$zza;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgym;->zzbj(Lcom/google/android/gms/internal/ads/zzgys;)Lcom/google/android/gms/internal/ads/zzgym;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgym;->zzbo()Lcom/google/android/gms/internal/ads/zzgys;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 26
    .line 27
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 30
    .line 31
    or-int/lit8 p1, p1, 0x2

    .line 32
    .line 33
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 34
    .line 35
    return-void
.end method

.method private zzS(Lcom/google/android/gms/internal/ads/zzbca$zzaw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 11
    .line 12
    return-void
.end method

.method private zzT(Lcom/google/android/gms/internal/ads/zzbca$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbca$zzq;->zza()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzi:I

    .line 6
    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 12
    .line 13
    return-void
.end method

.method private zzU(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzm:I

    .line 8
    .line 9
    return-void
.end method

.method private zzV(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzk:I

    .line 8
    .line 9
    return-void
.end method

.method private zzW(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzl:I

    .line 8
    .line 9
    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgys;->zzaZ()Lcom/google/android/gms/internal/ads/zzgym;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzbca$zzba;)Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzba(Lcom/google/android/gms/internal/ads/zzgys;)Lcom/google/android/gms/internal/ads/zzgym;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;

    .line 8
    .line 9
    return-object p0
.end method

.method public static bridge synthetic zzh()Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzj(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbk(Lcom/google/android/gms/internal/ads/zzgys;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzk(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbl(Lcom/google/android/gms/internal/ads/zzgys;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzgxk;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbm(Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzgxk;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzgxq;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbn(Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzgxq;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzn(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbo(Lcom/google/android/gms/internal/ads/zzgys;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzo(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbp(Lcom/google/android/gms/internal/ads/zzgys;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzp([B)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgys;->zzbq(Lcom/google/android/gms/internal/ads/zzgys;[B)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzgxk;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbr(Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzgxk;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbs(Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzx(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbu(Lcom/google/android/gms/internal/ads/zzgys;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzy(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbv(Lcom/google/android/gms/internal/ads/zzgys;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzz([BLcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzbca$zzba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgys;->zzbx(Lcom/google/android/gms/internal/ads/zzgys;[BLcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzgys;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzm:I

    .line 2
    .line 3
    return v0
.end method

.method public zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzk:I

    .line 2
    .line 3
    return v0
.end method

.method public zzc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzl:I

    .line 2
    .line 3
    return v0
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzbca$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzi:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbca$zzq;->zzb(I)Lcom/google/android/gms/internal/ads/zzbca$zzq;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbca$zzq;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final zzdd(Lcom/google/android/gms/internal/ads/zzgyr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x6

    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    if-eq p1, v3, :cond_6

    .line 14
    .line 15
    if-eq p1, v2, :cond_5

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    if-eq p1, v1, :cond_4

    .line 19
    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    if-ne p1, p3, :cond_2

    .line 23
    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzg:Lcom/google/android/gms/internal/ads/zzhal;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-class p2, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 29
    .line 30
    monitor-enter p2

    .line 31
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzg:Lcom/google/android/gms/internal/ads/zzhal;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyn;

    .line 36
    .line 37
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 38
    .line 39
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgyn;-><init>(Lcom/google/android/gms/internal/ads/zzgys;)V

    .line 40
    .line 41
    .line 42
    sput-object p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzg:Lcom/google/android/gms/internal/ads/zzhal;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p2

    .line 48
    return-object p1

    .line 49
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    return-object p1

    .line 52
    :cond_2
    throw p2

    .line 53
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbca$zzba$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbca$zzba;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzq;->zze()Lcom/google/android/gms/internal/ads/zzgyy;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v4, 0x7

    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string v5, "zzh"

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    aput-object v5, v4, v6

    .line 79
    .line 80
    const-string v5, "zzi"

    .line 81
    .line 82
    aput-object v5, v4, p2

    .line 83
    .line 84
    aput-object p1, v4, v3

    .line 85
    .line 86
    const-string p1, "zzj"

    .line 87
    .line 88
    aput-object p1, v4, v2

    .line 89
    .line 90
    const-string p1, "zzk"

    .line 91
    .line 92
    aput-object p1, v4, v1

    .line 93
    .line 94
    const-string p1, "zzl"

    .line 95
    .line 96
    aput-object p1, v4, v0

    .line 97
    .line 98
    const-string p1, "zzm"

    .line 99
    .line 100
    aput-object p1, v4, p3

    .line 101
    .line 102
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzf:Lcom/google/android/gms/internal/ads/zzbca$zzba;

    .line 103
    .line 104
    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004"

    .line 105
    .line 106
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzgys;->zzbQ(Lcom/google/android/gms/internal/ads/zzhad;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzbca$zzaw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzj:Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzaw;->zzg()Lcom/google/android/gms/internal/ads/zzbca$zzaw;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public zzr()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public zzs()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public zzt()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public zzu()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public zzv()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca$zzba;->zzh:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
