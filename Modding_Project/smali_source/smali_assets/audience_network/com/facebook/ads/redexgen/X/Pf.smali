.class public final Lcom/facebook/ads/redexgen/X/Pf;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VU;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VR;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/VU;

.field public final synthetic A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
    .locals 0

    .line 58404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/VU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:J

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 58405
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/VU;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Lcom/facebook/ads/redexgen/X/VR;

    invoke-static {v4, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0J(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    .line 58406
    return-void
.end method
