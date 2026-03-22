.class public final Lcom/facebook/ads/redexgen/X/JC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cea708CueInfo"
.end annotation


# static fields
.field public static final A02:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/JC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/o2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 791
    new-instance v0, Lcom/facebook/ads/redexgen/X/JB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JB;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JC;->A02:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 43500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43501
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 43502
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3C;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43503
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/3C;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43504
    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43505
    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/3C;->A09(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43506
    invoke-virtual {v0, p6}, Lcom/facebook/ads/redexgen/X/3C;->A04(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43507
    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/3C;->A0A(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43508
    invoke-virtual {v0, p8}, Lcom/facebook/ads/redexgen/X/3C;->A06(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43509
    .local v0, "cueBuilder":Lcom/facebook/ads/redexgen/X/3C;
    if-eqz p9, :cond_0

    .line 43510
    invoke-virtual {v0, p10}, Lcom/facebook/ads/redexgen/X/3C;->A0C(I)Lcom/facebook/ads/redexgen/X/3C;

    .line 43511
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JC;->A01:Lcom/facebook/ads/redexgen/X/o2;

    .line 43512
    iput p11, p0, Lcom/facebook/ads/redexgen/X/JC;->A00:I

    .line 43513
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/JC;)I
    .locals 0

    .line 43514
    iget p1, p1, Lcom/facebook/ads/redexgen/X/JC;->A00:I

    iget p0, p0, Lcom/facebook/ads/redexgen/X/JC;->A00:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic A01()Ljava/util/Comparator;
    .locals 1

    .line 43515
    sget-object v0, Lcom/facebook/ads/redexgen/X/JC;->A02:Ljava/util/Comparator;

    return-object v0
.end method
