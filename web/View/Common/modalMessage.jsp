<%-- 
    Document   : modalMessage
    Created on : Jun 19, 2024, 5:53:22 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Modal -->
<div class="modal fade " id="myModel" tabindex="-1" role="dialog" aria-labelledby="myModel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen-sm-down" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background: #f0f4f6">
                <h5 class="modal-title" id="myModel">Account Created</h5>
                <button type="button" class="close" style="background: white; border: none" data-bs-dismiss="modal" aria-label="Close" >
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="alert alert-success" style="font-size: 15px">Your new account has been created. Please login!</p>
            </div>
            <div class="modal-footer" style="background: #f0f4f6">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>
