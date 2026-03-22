.class public final Lcom/facebook/ads/redexgen/X/Jc;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;->A0i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;

.field public final synthetic A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 847
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LRx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "usnMdIZ0FvkqiUZevNTWLktoEg5pLAC7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DXfpDntuFVUaB3iAC9xpEYaXMcysh68b"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KPagnGwIHNxRQqHn90bhIF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OiThbZ96vqk0YqBrWrlbCPGqj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zO4ylzajSSdkzzLOGvXbKRrkPLlgkkF6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2QDKj7W9IPpyibsxcOZVzQQBEZY6mcrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j8cJ2BFMipeHC45SmF0VkU4zcd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jc;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;Z)V
    .locals 0

    .line 46006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:Lcom/facebook/ads/redexgen/X/JU;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 46007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0F(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v4

    .line 46008
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    if-eqz v4, :cond_1

    .line 46009
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:Z

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Xm;->A0B()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jc;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jc;->A02:[Ljava/lang/String;

    const-string v1, "GjOMFYo3T7nhomgErVvGRCVPy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setPageDetailsVisible(Z)V

    .line 46010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JU;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 46011
    :cond_1
    return-void

    .line 46012
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
