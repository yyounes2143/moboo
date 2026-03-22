.class public final Lcom/facebook/ads/redexgen/X/BK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/jG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/jH;->A03(Lcom/facebook/ads/redexgen/X/BZ;)Lcom/facebook/ads/redexgen/X/jH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/BZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$separatorMatcher"
        }
    .end annotation

    .line 30780
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BK;->A00:Lcom/facebook/ads/redexgen/X/BZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/1o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 30781
    new-instance v0, Lcom/facebook/ads/redexgen/X/1o;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1o;-><init>(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic AAc(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 30782
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BK;->A00(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/1o;

    move-result-object v0

    return-object v0
.end method
