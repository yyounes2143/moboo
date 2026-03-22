.class public final Lj$/util/stream/F;
.super Lj$/util/stream/G;
.source "SourceFile"


# static fields
.field public static final c:Lj$/util/stream/B;

.field public static final d:Lj$/util/stream/B;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 197
    new-instance v0, Lj$/util/stream/B;

    sget-object v2, Lj$/util/stream/Y2;->REFERENCE:Lj$/util/stream/Y2;

    .line 198
    sget-object v3, Lj$/util/Optional;->b:Lj$/util/Optional;

    new-instance v4, Lj$/util/stream/o;

    const/16 v1, 0x9

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/o;-><init>(I)V

    .line 198
    new-instance v5, Lj$/util/stream/o;

    const/16 v1, 0xa

    .line 0
    invoke-direct {v5, v1}, Lj$/util/stream/o;-><init>(I)V

    const/4 v1, 0x1

    .line 198
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/F;->c:Lj$/util/stream/B;

    .line 201
    new-instance v1, Lj$/util/stream/B;

    .line 202
    new-instance v5, Lj$/util/stream/o;

    const/16 v0, 0x9

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/o;-><init>(I)V

    .line 202
    new-instance v6, Lj$/util/stream/o;

    const/16 v0, 0xa

    .line 0
    invoke-direct {v6, v0}, Lj$/util/stream/o;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 202
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/F;->d:Lj$/util/stream/B;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 194
    iget-boolean v0, p0, Lj$/util/stream/G;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/G;->b:Ljava/lang/Object;

    .line 120
    new-instance v1, Lj$/util/Optional;

    invoke-direct {v1, v0}, Lj$/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
