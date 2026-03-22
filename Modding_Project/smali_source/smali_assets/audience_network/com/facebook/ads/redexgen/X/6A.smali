.class public final Lcom/facebook/ads/redexgen/X/6A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/6x;

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 383
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8qiLNNQ5vyMVHTnGSRqIYH7vmKWFglWA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MmZLlpUmCeAJmbrnsvUlOeosT2b4trAw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F6OhdvzD3alSBTyOt6RaJoXj3nzaYsfx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xx287Yna8TF6bT1u1Go86DeoE2qCPeph"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3UZ5i1ilvbC05GJFJQV3kBZois6ux7zX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EjY6nrBNo27Sp872cFf6GtSg6OGn5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mF6jYE7WEwd2TxTTRWKuDem5zACYSEbg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YtiRIUv5IVo7m2JEFXkoL0U8gRnX79g8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6A;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0

    .line 17361
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6A;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6A;)I
    .locals 0

    .line 17362
    iget p0, p0, Lcom/facebook/ads/redexgen/X/6A;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6A;)I
    .locals 0

    .line 17363
    iget p0, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6A;)Z
    .locals 0

    .line 17364
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/6A;->A03:Z

    return p0
.end method


# virtual methods
.method public final A03(I)V
    .locals 1

    .line 17365
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A01:I

    .line 17366
    return-void
.end method

.method public final A04(I)V
    .locals 3

    .line 17367
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    .line 17368
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 17369
    return-void

    .line 17370
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 17371
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/6A;->A03:Z

    .line 17372
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:I

    .line 17373
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 1

    .line 17374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6A;->A02:Lcom/facebook/ads/redexgen/X/6x;

    .line 17375
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A01:I

    .line 17376
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A03:Z

    .line 17377
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/6x;)Z
    .locals 4

    .line 17378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A02:Lcom/facebook/ads/redexgen/X/6x;

    if-ne p1, v0, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/6A;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/6A;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6A;->A04:[Ljava/lang/String;

    const-string v1, "a8XkvjAywsklqJZ77zbAyDpR6RKD2BNQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VuupfHWuP4U2DCcYrL3QbObgg99PbZin"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gtz v3, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A03:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
