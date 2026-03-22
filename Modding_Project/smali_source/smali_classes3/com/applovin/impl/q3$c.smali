.class public Lcom/applovin/impl/q3$c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/q3$c$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;

.field private final d:[B

.field private final e:I

.field private final f:Landroidx/core/util/Consumer;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/impl/q3$c;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/q3$c$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->f(Lcom/applovin/impl/q3$c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/q3$c;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->g(Lcom/applovin/impl/q3$c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/q3$c;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->a(Lcom/applovin/impl/q3$c$a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->a(Lcom/applovin/impl/q3$c$a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Lcom/applovin/impl/q3$c;->c:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->b(Lcom/applovin/impl/q3$c$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/q3$c;->d:[B

    .line 7
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->c(Lcom/applovin/impl/q3$c$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/q3$c;->e:I

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->d(Lcom/applovin/impl/q3$c$a;)Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/q3$c;->f:Landroidx/core/util/Consumer;

    .line 9
    invoke-static {p1}, Lcom/applovin/impl/q3$c$a;->e(Lcom/applovin/impl/q3$c$a;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/q3$c;->g:Ljava/util/concurrent/Executor;

    .line 10
    sget-object p1, Lcom/applovin/impl/q3$c;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/q3$c;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/q3$c$a;Lcom/applovin/impl/q3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/q3$c;-><init>(Lcom/applovin/impl/q3$c$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/q3$c;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/q3$c;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->g:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/applovin/impl/q3$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/applovin/impl/q3$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/applovin/impl/q3$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/applovin/impl/q3$c;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/applovin/impl/q3$c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/impl/q3$c;)Landroidx/core/util/Consumer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3$c;->f:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/impl/q3$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/applovin/impl/q3$c;->h(Lcom/applovin/impl/q3$c;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public h(Lcom/applovin/impl/q3$c;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/q3$c;->h:I

    .line 2
    .line 3
    iget p1, p1, Lcom/applovin/impl/q3$c;->h:I

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method
