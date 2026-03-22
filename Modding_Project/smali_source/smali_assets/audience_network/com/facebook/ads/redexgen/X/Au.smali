.class public final Lcom/facebook/ads/redexgen/X/Au;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecKey"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 608
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GZKwZyiqSgbNy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gxvOhK22J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oynjG2HHiKyR0HC9DXMPNe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UmekGSeFiM4iZcgnO5Y48TDimsFOJTq7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8UYnwVzHpKDA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GisGgojzJHptZAsJjFOXzbz3QW0chtBW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GrxOVvJk9dpZmR2CjxRPAk3xitjBYSO6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LRtUD1UWQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Au;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 29972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29973
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Ljava/lang/String;

    .line 29974
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    .line 29975
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    .line 29976
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 29977
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 29978
    return v5

    .line 29979
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/Au;

    if-eq v1, v0, :cond_2

    .line 29980
    .end local v2
    :cond_1
    return v2

    .line 29981
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Au;

    .line 29982
    .local v2, "other":Lcom/facebook/ads/redexgen/X/Au;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Au;->A00:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Au;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Au;->A03:[Ljava/lang/String;

    const-string v1, "8OzGK6f1ltbus"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    if-ne v1, v0, :cond_4

    :goto_0
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .line 29983
    .local v0, "prime":I
    const/4 v0, 0x1

    .line 29984
    .local v1, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 29985
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    const/16 v2, 0x4cf

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v1, v0

    .line 29986
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    if-eqz v0, :cond_0

    :goto_1
    add-int/2addr v1, v2

    .line 29987
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v1

    .line 29988
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_1

    .line 29989
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0
.end method
