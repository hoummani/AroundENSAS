.class final Lcom/facebook/share/internal/ShareInternalUtility$7;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$callId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 386
    iget-object v3, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 390
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    if-nez v0, :cond_1

    .line 391
    const/4 v2, 0x0

    .line 406
    :cond_0
    :goto_0
    return-object v2

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .local v2, "photoJSONObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "url"

    .line 399
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const-string v3, "user_generated"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Unable to attach images"

    invoke-direct {v3, v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
