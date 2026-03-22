.class public Lorg/apache/commons/io/input/TaggedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Serializable;


# virtual methods
.method public Wwwwwwwwwwwwww(Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/TaggedIOException;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Serializable;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
