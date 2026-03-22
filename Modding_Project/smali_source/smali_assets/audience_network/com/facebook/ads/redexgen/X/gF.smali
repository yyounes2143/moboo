.class public abstract Lcom/facebook/ads/redexgen/X/gF;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final A01:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2771
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gF;->A00:Ljava/lang/String;

    .line 2772
    sput-object v0, Lcom/facebook/ads/redexgen/X/gF;->A01:[Ljava/lang/Object;

    return-void
.end method

.method public static A00(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 82078
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 82079
    return-object p0

    .line 82080
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
