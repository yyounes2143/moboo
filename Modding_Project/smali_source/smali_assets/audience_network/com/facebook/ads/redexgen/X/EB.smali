.class public final Lcom/facebook/ads/redexgen/X/EB;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E1;->AF9(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/E1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;II)V
    .locals 0

    .line 34537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EB;->A02:Lcom/facebook/ads/redexgen/X/E1;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/EB;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/EB;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 34538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EB;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/EB;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/EB;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/DL;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/DL;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34539
    return-void
.end method
