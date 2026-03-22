.class public final Lcom/facebook/ads/redexgen/X/2n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final A01:[I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2A;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 89
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2n;->A01:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 10364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10365
    new-instance v0, Lcom/facebook/ads/redexgen/X/2A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2A;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    .line 10366
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/2n;
    .locals 1

    .line 10367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2A;->A00(I)Lcom/facebook/ads/redexgen/X/2A;

    .line 10368
    return-object p0
.end method

.method public final A01(IZ)Lcom/facebook/ads/redexgen/X/2n;
    .locals 1

    .line 10369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2A;->A01(IZ)Lcom/facebook/ads/redexgen/X/2A;

    .line 10370
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/oZ;)Lcom/facebook/ads/redexgen/X/2n;
    .locals 2

    .line 10371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/oZ;->A00(Lcom/facebook/ads/redexgen/X/oZ;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A02(Lcom/facebook/ads/redexgen/X/2B;)Lcom/facebook/ads/redexgen/X/2A;

    .line 10372
    return-object p0
.end method

.method public final varargs A03([I)Lcom/facebook/ads/redexgen/X/2n;
    .locals 1

    .line 10373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2A;->A03([I)Lcom/facebook/ads/redexgen/X/2A;

    .line 10374
    return-object p0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/oZ;
    .locals 3

    .line 10375
    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A04()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/oZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/oZ;-><init>(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/2l;)V

    return-object v0
.end method
