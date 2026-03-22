.class public final Lcom/facebook/ads/redexgen/X/JK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Z

.field public final A02:[B

.field public final A03:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 43766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43767
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:I

    .line 43768
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/JK;->A01:Z

    .line 43769
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JK;->A03:[B

    .line 43770
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/JK;->A02:[B

    .line 43771
    return-void
.end method
