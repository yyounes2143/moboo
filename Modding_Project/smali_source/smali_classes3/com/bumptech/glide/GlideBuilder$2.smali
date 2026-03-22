.class Lcom/bumptech/glide/GlideBuilder$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestOptions;


# virtual methods
.method public build()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder$2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
