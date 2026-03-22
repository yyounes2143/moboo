.class public final Lcom/facebook/ads/redexgen/X/nN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6X;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6Y;-><init>([Lcom/facebook/ads/redexgen/X/7D;JLcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/redexgen/X/6Z;Lcom/facebook/ads/redexgen/X/EL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6Y;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/CL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6Y;Lcom/facebook/ads/redexgen/X/CL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nN;->A00:Lcom/facebook/ads/redexgen/X/6Y;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nN;->A01:Lcom/facebook/ads/redexgen/X/CL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5O(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/EO;J)Lcom/facebook/ads/redexgen/X/mM;
    .locals 1

    .line 100448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nN;->A01:Lcom/facebook/ads/redexgen/X/CL;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/CL;->A5O(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/EO;J)Lcom/facebook/ads/redexgen/X/mM;

    move-result-object v0

    return-object v0
.end method

.method public final AH0(Lcom/facebook/ads/redexgen/X/mM;)V
    .locals 1

    .line 100449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nN;->A01:Lcom/facebook/ads/redexgen/X/CL;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/CL;->AH0(Lcom/facebook/ads/redexgen/X/mM;)V

    .line 100450
    return-void
.end method
