.class Lcom/parse/PushHistory$Entry;
.super Ljava/lang/Object;
.source "PushHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parse/PushHistory$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public pushId:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/parse/PushHistory$Entry;)I
    .locals 2
    .param p1, "other"    # Lcom/parse/PushHistory$Entry;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    iget-object v1, p1, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/parse/PushHistory$Entry;

    invoke-virtual {p0, p1}, Lcom/parse/PushHistory$Entry;->compareTo(Lcom/parse/PushHistory$Entry;)I

    move-result v0

    return v0
.end method
