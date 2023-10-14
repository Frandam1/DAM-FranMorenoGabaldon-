import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { API_URL } from './config';

@Injectable({
  providedIn: 'root',
})
export class UsuarioService {
  private API_URL = 'http://localhost:8080';

  constructor(private httpClient: HttpClient) {}

  getUsuarios(): Observable<any[]> {
    const url = `${this.API_URL}/usuario`;
    return this.httpClient.get<any[]>(url);
  }

  crearUsuario(usuario: any): Observable<any> {
    const url = `${this.API_URL}/usuario`;
    return this.httpClient.post<any>(url, usuario);
  }

  eliminarUsuario(id: number): Observable<any> {
    const url = `${this.API_URL}/usuario/${id}`;
    return this.httpClient.delete<any>(url);
  }

  actualizarUsuario(id: number, usuario: any): Observable<any> {
    const url = `${this.API_URL}/usuario/${id}`;
    return this.httpClient.put<any>(url, usuario);
  }
  
}

  

