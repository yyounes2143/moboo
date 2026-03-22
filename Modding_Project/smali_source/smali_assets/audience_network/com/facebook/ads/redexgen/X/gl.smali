.class public final Lcom/facebook/ads/redexgen/X/gl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6p;->A00(Lcom/facebook/ads/redexgen/X/gm;)Lcom/facebook/ads/redexgen/X/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gl;->A00:Lcom/facebook/ads/redexgen/X/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5K(Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/hD;Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/Nm;
    .locals 7

    .line 83614
    new-instance v1, Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gl;->A00:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gl;->A00:Lcom/facebook/ads/redexgen/X/gm;

    move-object v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/gn;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/gm;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/hD;Lcom/facebook/ads/redexgen/X/Nh;)V

    return-object v1
.end method
