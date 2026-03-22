.class public Lcom/applovin/impl/i3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/i3$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/i3$a;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/i3$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/i3;->a:Lcom/applovin/impl/i3$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/i3;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/applovin/impl/q2;)Lcom/applovin/impl/i3;
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/q2;->O()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/applovin/impl/i3;

    sget-object v1, Lcom/applovin/impl/i3$a;->c:Lcom/applovin/impl/i3$a;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/i3;-><init>(Lcom/applovin/impl/i3$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/i3;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/applovin/impl/i3;

    sget-object v1, Lcom/applovin/impl/i3$a;->b:Lcom/applovin/impl/i3$a;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/i3;-><init>(Lcom/applovin/impl/i3$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/i3;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/applovin/impl/i3;

    sget-object v1, Lcom/applovin/impl/i3$a;->a:Lcom/applovin/impl/i3$a;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/i3;-><init>(Lcom/applovin/impl/i3$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/i3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i3;->a:Lcom/applovin/impl/i3$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
