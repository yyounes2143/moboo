.class public final Lcom/facebook/ads/redexgen/X/D6;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/E1;

.field public final A01:Lcom/facebook/ads/redexgen/X/Tf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Tf<",
            "Lcom/facebook/ads/redexgen/X/3Q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 648
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KyDK4ozsSQOI8CeBEp6vN7GPAMaKi3Lj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3K3dE7OkNcMTAukVEMEsyydi1KZJfoYe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AKsSDy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "td2HYxymrySRBlk8LVzv2Nj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9YKsZJjoWB8K3TGCGylWNfB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C67xSy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZVZacBuH1Jrb8cRz3UZ99yjmQBL5sCV1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zO36dBYDIleQnJstGNGNdS3bkLsuKmlY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D6;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D6;->A04()V

    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/D6;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 33708
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33709
    new-instance v0, Lcom/facebook/ads/redexgen/X/D7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/D7;-><init>(Lcom/facebook/ads/redexgen/X/D6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Lcom/facebook/ads/redexgen/X/Tf;

    .line 33710
    sget v1, Lcom/facebook/ads/redexgen/X/D6;->A04:I

    .line 33711
    const/high16 v0, 0x33000000

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33712
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33713
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/D6;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 33714
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/D6;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/D6;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/D6;->A03:[Ljava/lang/String;

    const-string v1, "iGxWfyiSQAQNOwaGoqCiMbtpxtO5GMjZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "gQ1pvXOTKlX7L3B8LOaiCsG8OhRO9Yk5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3d

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(J)Ljava/lang/String;
    .locals 7

    .line 33715
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 33716
    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D6;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33717
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    .line 33718
    .local v0, "minutes":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v0, 0xea60

    rem-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 33719
    .local v2, "seconds":J
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/D6;J)Ljava/lang/String;
    .locals 0

    .line 33720
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D6;->A02(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D6;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0x1at
        0x18t
        0x4et
        0x10t
        0xft
        0x1at
        0x18t
        0x4et
        0x12t
        0x12t
        0x18t
        0x12t
        0x12t
    .end array-data
.end method


# virtual methods
.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 33721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Lcom/facebook/ads/redexgen/X/Tf;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(Lcom/facebook/ads/redexgen/X/Tf;)Z

    .line 33724
    :cond_0
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 33725
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Lcom/facebook/ads/redexgen/X/Tf;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A06(Lcom/facebook/ads/redexgen/X/Tf;)Z

    .line 33728
    :cond_0
    return-void
.end method
